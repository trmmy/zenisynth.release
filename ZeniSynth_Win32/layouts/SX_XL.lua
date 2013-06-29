dofile("layouts/SX_mouse.lua")
dofile("layouts/SX_symbol.lua")

function SX.XL()

	if VK==VK_XL and UP and ONESHOT then
		system.setIMEStatus(false)
	end

	if SCAN==SC_XL and UP then
		mouse.setCursorForce(0,0)
	end

	if XL then
		if SX.mouse() then return true
		elseif SX.symbol() then return true
		elseif VK==VK_XL then return true
		elseif SCAN==SC_1 then key(VK_F1,UP) return true
		elseif SCAN==SC_2 then key(VK_F2,UP) return true
		elseif SCAN==SC_3 then key(VK_F3,UP) return true
		elseif SCAN==SC_4 then key(VK_F4,UP) return true
		elseif SCAN==SC_5 then key(VK_F5,UP) return true
		elseif SCAN==SC_6 then key(VK_F6,UP) return true
		elseif SCAN==SC_7 then key(VK_F7,UP) return true
		elseif SCAN==SC_8 then key(VK_F8,UP) return true
		elseif SCAN==SC_9 then key(VK_F9,UP) return true
		elseif SCAN==SC_0 then key(VK_F10,UP) return true
		elseif SCAN==SC_MINUS then key(VK_F11,UP) return true
		elseif SCAN==SC_EQUAL then key(VK_F12,UP) return true
		elseif SCAN==SC_SEMICOLON then key(VK_SHIFT,false) key(VK_OEM_MINUS,UP) key(VK_SHIFT,true) return true
		end
	end
	return false
end