--[[
    # Resource Name
	  Rage's Wasted Screen
	# Author
	  Rage
	# Date
	  1.05.2014
	# Copyright (c)
	  If you edit it, then please respect me and keep
	  the credits.
--]]
local screenW,screenH = guiGetScreenSize()
local resW,resH = 1280,720
local sW,sH =  (screenW/resW), (screenH/resH)

    function drawPlayerWastedScreen()
        dxDrawRectangle(0*sW, 239*sH, 1280*sW, 147*sH, tocolor(0, 0, 0, 180), true)
        dxDrawText("WASTED", 328*sW, 240*sH, 955*sW, 386*sH, tocolor(0, 0, 0, 255), 4.00, "pricedown", "center", "center", false, false, true, false, false)
        dxDrawText("WASTED", 328*sW, 238*sH, 955*sW, 384*sH, tocolor(0, 0, 0, 255), 4.00, "pricedown", "center", "center", false, false, true, false, false)
        dxDrawText("WASTED", 326*sW, 240*sH, 953*sW, 386*sH, tocolor(0, 0, 0, 255), 4.00, "pricedown", "center", "center", false, false, true, false, false)
        dxDrawText("WASTED", 326*sW, 238*sH, 953*sW, 384*sH, tocolor(0, 0, 0, 255), 4.00, "pricedown", "center", "center", false, false, true, false, false)
        dxDrawText("WASTED", 327*sW, 239*sH, 954*sW, 385*sH, tocolor(229, 23, 23, 255), 4.00, "pricedown", "center", "center", false, false, true, false, false)
    end

	
addEventHandler( "onClientPlayerWasted", getLocalPlayer(),
    function()
        addEventHandler("onClientRender", root, drawPlayerWastedScreen)
		removeScreen()
        showPlayerHudComponent( "all", false )
        showChat( false )		
        playSound("audio/wasted.mp3")	
	end)	
  
function removeScreen()
	setTimer ( function()
        removeEventHandler("onClientRender", root, drawPlayerWastedScreen)		
	end, 5000, 1 )
end	

addEventHandler( "onClientPlayerSpawn", getLocalPlayer(),
	function()
	    showPlayerHudComponent( "all", true )
        showChat( true )
    end)