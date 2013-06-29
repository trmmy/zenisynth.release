function SX.QwertyToSX()
	if SCAN==SC_Q then key(VK_X,UP) return true
	elseif SCAN==SC_W then key(VK_W,UP) return true
	elseif SCAN==SC_E then key(VK_L,UP) return true
	elseif SCAN==SC_R then key(VK_Z,UP) return true
	elseif SCAN==SC_T then key(VK_J,UP) return true
	elseif SCAN==SC_Y then key(VK_Q,UP) return true
	elseif SCAN==SC_U then key(VK_G,UP) return true
	elseif SCAN==SC_I then key(VK_H,UP) return true
	elseif SCAN==SC_O then key(VK_C,UP) return true
	elseif SCAN==SC_P then key(VK_Y,UP) return true
	elseif SCAN==SC_A then key(VK_O,UP) return true
	elseif SCAN==SC_S then key(VK_I,UP) return true
	elseif SCAN==SC_D then key(VK_E,UP) return true
	elseif SCAN==SC_F then key(VK_A,UP) return true	
	elseif SCAN==SC_G then key(VK_F,UP) return true
	elseif SCAN==SC_H then key(VK_B,UP) return true
	elseif SCAN==SC_J then key(VK_T,UP) return true
	elseif SCAN==SC_K then key(VK_R,UP) return true
	elseif SCAN==SC_L then key(VK_N,UP) return true
	elseif SCAN==SC_SEMICOLON then key(VK_S,UP) return true
	elseif SCAN==SC_QUOTE then
		if SHIFT or XL then
			key(VK_SHIFT,false) key(VK_OEM_102,UP) key(VK_SHIFT,true)
		else
			key(VK_OEM_MINUS,UP)
		end
		
	return true
	elseif SCAN==SC_Z then key(VK_OEM_PLUS,UP) return true
	elseif SCAN==SC_X then key(VK_OEM_PERIOD,UP) return true
	elseif SCAN==SC_C then key(VK_K,UP) return true
	elseif SCAN==SC_V then key(VK_U,UP) return true
	elseif SCAN==SC_B then key(VK_OEM_3,UP) return true
	elseif SCAN==SC_N then key(VK_D,UP) return true
	elseif SCAN==SC_M then key(VK_M,UP) return true
	elseif SCAN==SC_COMMA then key(VK_P,UP) return true
	elseif SCAN==SC_PERIOD then key(VK_V,UP) return true
	elseif SCAN==SC_SLASH then key(VK_OEM_COMMA,UP) return true

	end
	return false
end