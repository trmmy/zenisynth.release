function SX.XR()

	if VK==VK_XR and UP and ONESHOT then
		system.setIMEStatus(true)
	end

	if XR then
		if VK==VK_E then key(VK_UP,UP) return true
		elseif VK==VK_D then key(VK_DOWN,UP) return true
		elseif VK==VK_S then key(VK_LEFT,UP) return true
		elseif VK==VK_F then key(VK_RIGHT,UP) return true
		elseif SCAN==SC_SEMICOLON then key(VK_RETURN,UP) return true
		elseif VK==VK_XR then
			return true
		elseif VK==VK_X then key(VK_OEM_1,UP) return true
		
		elseif VK==VK_J then key(VK_DELETE,UP) return true
		elseif VK==VK_I then key(VK_HOME,UP) return true
		elseif VK==VK_K then key(VK_END,UP) return true
		elseif VK==VK_O then key(VK_PRIOR,UP) return true
		elseif VK==VK_L then key(VK_NEXT,UP) return true
		elseif VK==VK_SPACE then key(VK_BACK,UP) return true
		elseif SCAN==SC_1 then key(VK_F1,UP) return true
		elseif SCAN==SC_2 then key(VK_F2,UP) return true
		elseif SCAN==SC_3 then key(VK_F3,UP) return true
		elseif SCAN==SC_4 then
			if SHIFT and DOWN and R==false then
				system.forceKillActiveApp() return true
			else
				key(VK_F4,UP)
			end
		return true
		elseif SCAN==SC_5 then key(VK_F5,UP) return true
		elseif SCAN==SC_6 then key(VK_F6,UP) return true
		elseif SCAN==SC_7 then key(VK_F7,UP) return true
		elseif SCAN==SC_8 then key(VK_F8,UP) return true
		elseif SCAN==SC_9 then key(VK_F9,UP) return true
		elseif SCAN==SC_0 then key(VK_F10,UP) return true
		elseif SCAN==SC_MINUS then key(VK_F11,UP) return true
		elseif SCAN==SC_EQUAL then key(VK_F12,UP) return true
		end
	end

end