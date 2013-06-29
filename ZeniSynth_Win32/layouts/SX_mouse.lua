mouse.setCursorFriction(14000)
local force=17000
local dir={left=false,right=false,up=false,down=false}
function SX.mouse()
	
	if VK==VK_F then
		if DOWN then dir.right=true mouse.setCursorForceX(force)
		elseif UP then
			dir.right=false
			if dir.left==false then
				mouse.setCursorForceX(0)
			end
		end
		return true
	elseif VK==VK_S then
		if DOWN then dir.left=true mouse.setCursorForceX(-force)
		elseif UP then
			dir.left=false
			if dir.right==false then
				mouse.setCursorForceX(0)
			end
		end
		return true
	elseif VK==VK_E then
		if DOWN then dir.up=true mouse.setCursorForceY(-force)
		elseif UP then
			dir.up=false
			if dir.down==false then
				mouse.setCursorForceY(0)
			end
		end
		return true
	elseif VK==VK_D then
		if DOWN then dir.down=true mouse.setCursorForceY(force)
		elseif UP then
			dir.down=false
			if dir.up==false then
				mouse.setCursorForceY(0)
			end
		end
		return true
	end
	
	if	VK==VK_A then mouse.button(VK_LBUTTON,UP) return true
	elseif	VK==VK_Z then mouse.button(VK_RBUTTON,UP) return true
	elseif	VK==VK_G or VK==VK_C then mouse.button(VK_MBUTTON,UP) return true
	elseif	VK==VK_T or VK==VK_X then 
		if DOWN then mouse.wheel(120) return true end
	elseif	VK==VK_V then
		if DOWN then mouse.wheel(-120) return true end
	end
	return false
end
