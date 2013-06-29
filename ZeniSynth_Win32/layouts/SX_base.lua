SX={}
VK=0
SCAN=0
DOWN=false
ONESHOT=false
R=false
RCOUNT=0
UP=false
XL=false
XL2=false
XR=false
XR2=false

VK_XR=VK_CONVERT
VK_XL=VK_NONCONVERT
VK_XR2=VK_OEM_COPY
VK_XL2=VK_LWIN
SC_XR=SC_CONVERT
SC_XL=SC_NONCONVERT
SC_XR2=SC_KANA
SHIFT=false
CTRL=false

function sendScan(scanCode,up)
	flags=KEYEVENTF_SCANCODE
	if up then flags=flags+KEYEVENTF_KEYUP end
	if SHIFT then flags=flags+KEYEVENTF_EXTENDEDKEY end
	sendInput(0,scanCode,flags)
end

function key(vkCode)
	key(vkCode,false)
	key(vkCode,true)
end

function key(vkCode,up)
	flags=0
	if up then flags=KEYEVENTF_KEYUP end
	if SHIFT then flags=flags+KEYEVENTF_EXTENDEDKEY end
	sendInput(vkCode,0,flags)
end


function SX.acquire(vkCode,scanCode,flags)
	SCAN=scanCode
	prevVK=VK
	prevDOWN=DOWN
	VK=vkCode

	DOWN=AND(flags,KEYEVENTF_KEYUP)==0
	UP=DOWN~=true

	if prevVK==VK then
		ONESHOT=true
		if DOWN and prevDOWN then
			R=true
			RCOUNT=RCOUNT+1
		end
	else
		ONESHOT=false
		R=false
		RCOUNT=0
	end

	if VK==VK_LSHIFT or VK==VK_RSHIFT then SHIFT = DOWN end
	if VK==VK_CONTROL then CTRL = DOWN end

	if SCAN==SC_XR then
		XR=DOWN
	elseif SCAN == SC_XL then
		XL=DOWN
	elseif SCAN == SC_XR2 then

		XR2=DOWN
	end

--	ime,conv=system.getIMEStatus()
--	out(ime)
--	out(conv)

--	press,toggle=getKeyState(VK_OEM_COPY)
--	out("vk="..VK)
--	out("scan="..SCAN)
--	out("down="..tostring(DOWN))
--	out("press="..tostring(press))
--	out("toggle="..tostring(toggle))
--	out("----")
end