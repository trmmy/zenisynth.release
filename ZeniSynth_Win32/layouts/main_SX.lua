dofile("layouts/SX_base.lua")

dofile("layouts/SX_XR.lua")
dofile("layouts/SX_XL.lua")
dofile("layouts/SX_XR2.lua")
dofile("layouts/SX_QwertyToSX.lua")
out("SX :: Synergistic eXtended")

--a=cdata.new(10)

function main(vkCode,scanCode,flags)

	SX.acquire(vkCode,scanCode,flags)
--out(scanCode.." "..flags)
	--XL ( Mouse , Symbols )
	
	if SX.XR() then return end
	if SX.XR2() then return end
	
	if false
	or string.match(system.getActiveWindowName(),"^Half[-]Life.*")
	or string.match(system.getActiveWindowName(),"^Mirror's Edge.*")
	or string.match(system.getActiveWindowName(),"^HALF[-]LIFE.*")
	or string.match(system.getActiveWindowName(),"^FX11.*")
	or string.match(system.getActiveWindowName(),"^World of Warcraft*")
	or string.match(system.getActiveWindowName(),"^- Crysis.*")
	or string.match(system.getActiveWindowName(),"^Unreal Tournament.*")
	or string.match(system.getActiveWindowName(),"^S[.]T[.]A[.]L[.]K[.]E[.]R[.].*")
	or string.match(system.getActiveWindowName(),"^Halo 2.*")
	or string.match(system.getActiveWindowName(),"^Lost Planet Ver.*")
	or string.match(system.getActiveWindowName(),"^Versatile Engine demo.*")
	then
		if scanCode==SC_NONCONVERT then
			scanCode=SC_NUM0
		end
	else
		if SX.XL() then return end
		if false
		or string.match(system.getActiveWindowTopName(),"^Left 4 Dead")
		or string.match(system.getActiveWindowName(),"^Blender.*")
		or string.match(system.getActiveWindowTopName(),"^Autodesk Softimage.*")
		then
		else
			if SX.QwertyToSX() then return end
		end
	end
	sendInput(VK,scanCode,flags)

--out(a:size())
--out(a:getPtr())
--a.rawSet(a:getPtr(),0x6463,4);
--out(a.rawGet(a:getPtr(),1));
end