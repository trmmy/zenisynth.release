function SX.XR()

	if SCAN==SC_XR and UP and ONESHOT then
		system.setIMEStatus(true)
	end

	if XR then
		if SCAN==SC_E then sendScan(SC_UP,UP) return true
		elseif SCAN==SC_D then sendScan(SC_DOWN,UP) return true
		elseif SCAN==SC_S then sendScan(SC_LEFT,UP) return true
		elseif SCAN==SC_F then sendScan(SC_RIGHT,UP) return true
		elseif SCAN==SC_SEMICOLON then sendScan(SC_ENTER,UP) return true
		elseif SCAN==SC_XR then
			return true
		elseif SCAN==SC_X then sendScan(SC_QUOTE,UP) return true
		
		elseif SCAN==SC_J then sendScan(SC_DELETE,UP) return true
		elseif SCAN==SC_I then sendScan(SC_HOME,UP) return true
		elseif SCAN==SC_K then sendScan(SC_END,UP) return true
		elseif SCAN==SC_O then sendScan(SC_PAGEUP,UP) return true
		elseif SCAN==SC_L then sendScan(SC_PAGEDOWN,UP) return true
		elseif SCAN==SC_SPACE then sendScan(SC_BS,UP) return true
		elseif SCAN==SC_1 then sendScan(SC_F1,UP) return true
		elseif SCAN==SC_2 then sendScan(SC_F2,UP) return true
		elseif SCAN==SC_3 then sendScan(SC_F3,UP) return true
		elseif SCAN==SC_4 then
			if SHIFT and DOWN and R==false then
				system.forceKillActiveApp() return true
			else
				sendScan(SC_F4,UP)
			end
		return true
		elseif SCAN==SC_5 then sendScan(SC_F5,UP) return true
		elseif SCAN==SC_6 then sendScan(SC_F6,UP) return true
		elseif SCAN==SC_7 then sendScan(SC_F7,UP) return true
		elseif SCAN==SC_8 then sendScan(SC_F8,UP) return true
		elseif SCAN==SC_9 then sendScan(SC_F9,UP) return true
		elseif SCAN==SC_0 then sendScan(SC_F10,UP) return true
		elseif SCAN==SC_MINUS then sendScan(SC_F11,UP) return true
		elseif SCAN==SC_EQUAL then sendScan(SC_F12,UP) return true
		end
	end

end