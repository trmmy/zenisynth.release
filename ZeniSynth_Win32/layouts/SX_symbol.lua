
function SX.symbol()
	if XL then
		if SCAN==SC_H then
			if SHIFT then
				key(VK_OEM_5,UP) return true
			else
				key(VK_SHIFT,false) key(VK_7,UP) key(VK_SHIFT,true) return true
			end
		elseif SCAN==SC_U then
				key(VK_SHIFT,false) key(VK_6,UP) key(VK_SHIFT,true) return true
		elseif SCAN==SC_N then
			if SHIFT then SHIFT=false key(VK_SHIFT,true) key(VK_OEM_102,UP) key(VK_SHIFT,false) SHIFT=true return true
			else key(VK_SHIFT,false) key(VK_2,UP) key(VK_SHIFT,true) return true
			end
		elseif SCAN==SC_O then	key(VK_OEM_2,UP) return true
		elseif SCAN==SC_P then
			key(VK_SHIFT,false) key(VK_OEM_1,UP) key(VK_SHIFT,true) return true
		elseif VK==VK_J then
			if SHIFT then
				key(VK_SHIFT,false) key(VK_OEM_COMMA,UP) key(VK_SHIFT,true) return true
			else
				key(VK_SHIFT,false) key(VK_8,UP) key(VK_SHIFT,true) return true
			end
		elseif VK==VK_I then
			if SHIFT then
				key(VK_SHIFT,false) key(VK_OEM_PERIOD,UP) key(VK_SHIFT,true) return true
			else
				key(VK_SHIFT,false) key(VK_9,UP) key(VK_SHIFT,true) return true
			end
		elseif VK==VK_K then
			if SHIFT then
				SHIFT=false key(VK_SHIFT,true) key(VK_OEM_4,UP) key(VK_SHIFT,false) SHIFT=true return true
			else
				key(VK_SHIFT,false) key(VK_OEM_4,UP) key(VK_SHIFT,true) return true

			end
		elseif VK==VK_L then
			if SHIFT then
				SHIFT=false key(VK_SHIFT,true) key(VK_OEM_6,UP) key(VK_SHIFT,false) SHIFT=true return true
			else
				key(VK_SHIFT,false) key(VK_OEM_6,UP) key(VK_SHIFT,true) return true
			end
		end
	end

	return false
end