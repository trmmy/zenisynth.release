function SX.XR2()

	if XR2 then
		if SCAN==SC_E then key(VK_UP,UP) return true
		elseif SCAN==SC_D then key(VK_DOWN,UP) return true
		elseif SCAN==SC_S then key(VK_LEFT,UP) return true
		elseif SCAN==SC_F then key(VK_RIGHT,UP) return true
		elseif SCAN==SC_SPACE then key(VK_BACK,UP) return true
		elseif SCAN==SC_N then key(VK_NUMPAD0,UP) return true
		elseif SCAN==SC_M then key(VK_NUMPAD1,UP) return true 
		elseif SCAN==SC_COMMA then key(VK_NUMPAD2,UP) return true 
		elseif SCAN==SC_PERIOD then key(VK_NUMPAD3,UP) return true 
		elseif SCAN==SC_J then key(VK_NUMPAD4,UP) return true 
		elseif SCAN==SC_K then key(VK_NUMPAD5,UP) return true 
		elseif SCAN==SC_L then key(VK_NUMPAD6,UP) return true 
		elseif SCAN==SC_U then key(VK_NUMPAD7,UP) return true 
		elseif SCAN==SC_I then key(VK_NUMPAD8,UP) return true
		elseif SCAN==SC_O then key(VK_NUMPAD9,UP) return true

--		elseif VK==VK_XR2 then return true
		end
	end
	if SCAN==SC_KANA then return true end

	return false
end