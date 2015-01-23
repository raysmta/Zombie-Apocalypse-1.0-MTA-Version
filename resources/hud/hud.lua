function getPreviousWeapon()
    local tempSlot = {}
    local curSlot = getPedWeaponSlot(localPlayer)
    if (curSlot == 0) and (getPedWeapon(localPlayer) == 0 or getPedWeapon(localPlayer) == 1) then
        curSlot = 13
    end
   
    tempSlot["ID"] = 12 + 1
    repeat
        tempSlot["ID"] = tempSlot["ID"]-1
    until (tempSlot["ID"] < curSlot) and not (tempSlot["ID"] ~= 0 and getPedWeapon(localPlayer, tempSlot["ID"]) == 0)
    return getPedWeapon(localPlayer, tempSlot["ID"])
end
 
function getNextWeapon()
    local tempSlot = {}
    local curSlot = getPedWeaponSlot(localPlayer)
    if (curSlot == 12) then
        curSlot = - 1
    end
   
    tempSlot["ID"] = - 1
    repeat
        tempSlot["ID"] = tempSlot["ID"] + 1
        if tempSlot["ID"] == 13 then
            tempSlot["ID"] = -1
            curSlot = -1
        end
    until (tempSlot["ID"] > curSlot) and not (tempSlot["ID"] ~= 0 and getPedWeapon(localPlayer, tempSlot["ID"]) == 0)
    return getPedWeapon(localPlayer, tempSlot["ID"])
end

local sx,sy = guiGetScreenSize()
local px,py = 1600,900
local x,y =  (sx/px), (sy/py)	



		resourceroot = getResourceRootElement(getThisResource())
	local noreloadweapons = {}
	noreloadweapons[16] = true
	noreloadweapons[17] = true
	noreloadweapons[18] = true
	noreloadweapons[19] = true
	noreloadweapons[25] = true
	noreloadweapons[33] = true
	noreloadweapons[34] = true
	noreloadweapons[35] = true
	noreloadweapons[36] = true
	noreloadweapons[37] = true
	noreloadweapons[38] = true
	noreloadweapons[39] = true
	noreloadweapons[41] = true
	noreloadweapons[42] = true
	noreloadweapons[43] = true

	local meleespecialweapons = {}
	meleespecialweapons[0] = true
	meleespecialweapons[1] = true
	meleespecialweapons[2] = true
	meleespecialweapons[3] = true
	meleespecialweapons[4] = true
	meleespecialweapons[5] = true
	meleespecialweapons[6] = true
	meleespecialweapons[7] = true
	meleespecialweapons[8] = true
	meleespecialweapons[9] = true
	meleespecialweapons[10] = true
	meleespecialweapons[11] = true
	meleespecialweapons[12] = true
	meleespecialweapons[13] = true
	meleespecialweapons[14] = true
	meleespecialweapons[15] = true
	meleespecialweapons[40] = true
	meleespecialweapons[44] = true
	meleespecialweapons[45] = true
	meleespecialweapons[46] = true	
	
	local rootElement = getResourceRootElement(getThisResource())
		
function OnStop ()
	removeEventHandler("onClientRender", getRootElement(), HUD)
	removeEventHandler("onClientRender", getRootElement(), HUD2)
	removeEventHandler("onClientRender", getRootElement(), HUD3)
	showPlayerHudComponent("clock",true)
    showPlayerHudComponent("money",true)
    showPlayerHudComponent("health",true)
    showPlayerHudComponent("armour",true)
    showPlayerHudComponent("weapon",true) 
    showPlayerHudComponent("ammo",true)
    showPlayerHudComponent("wanted",true)
    showPlayerHudComponent("breath",true)
end
addEventHandler("onClientResourceStop", rootElement, OnStop)

function OnStart ()
	addEventHandler("onClientRender", getRootElement(), HUD)
	addEventHandler("onClientRender", getRootElement(), HUD2)
	addEventHandler("onClientRender", getRootElement(), HUD3)
	showPlayerHudComponent("clock",false)
    showPlayerHudComponent("money",false)
    showPlayerHudComponent("health",false)
    showPlayerHudComponent("armour",false)
    showPlayerHudComponent("weapon",false) 
    showPlayerHudComponent("ammo",false)
    showPlayerHudComponent("wanted",false)
    showPlayerHudComponent("breath",false)
end
addEventHandler( "onClientResourceStart", rootElement, OnStart )
		
  function HUD ()
    vida = getElementHealth ( getLocalPlayer() ) + 0.40000152596
    colete = getPedArmor ( getLocalPlayer() ) + 0.40000152596
    armaID = getPedWeapon(localPlayer)
    Money = string.format("%09d",getPlayerMoney( getLocalPlayer() ))
    hr,mins = getTime()
    time = hr.."#000000:#FFFFFF"..(((mins <10) and "0"..mins) or mins)
	time1 = hr.."#000000:"..(((mins <10) and "0"..mins) or mins)
	clip = getPedAmmoInClip (getLocalPlayer())
	oxigenio= getPedOxygenLevel ( getLocalPlayer() )
	stat = getPedStat ( getLocalPlayer(), 24 )
	showammo1 = getPedAmmoInClip (localPlayer,getPedWeaponSlot(localPlayer))
	showammo2 = getPedTotalAmmo(localPlayer)-getPedAmmoInClip(localPlayer)
	showammo3 = getPedTotalAmmo(getLocalPlayer())
	wanted = getPlayerWantedLevel (getLocalPlayer())
	
	if oxigenio < 1000 or isElementInWater (getLocalPlayer()) then
	dxDrawRectangle(x*1300, y*130, x*29/1000*oxigenio, y*24, tocolor(255, 255, 255, 200), true)
	end

	if stat < 1000 then
	dxDrawRectangle(x*1268, y*160, x*308/100*vida, y*32, tocolor(200, 0, 0, 200), true)
	else
	dxDrawRectangle(x*1268, y*160, x*308/200*vida, y*32, tocolor(200, 0, 0, 200), true)
	end
	
	dxDrawImage(x*1230, y*-46, x*380, y*450, "img/skill.png")
	
	dxDrawRectangle(x*1337, y*121, x*212/100*colete, y*32, tocolor(0, 96, 255, 200), true)
	
	if wanted == 1 then
	dxDrawImage(x*1200, y*240, x*40, y*40, "img/star.png")
	end
	if wanted == 2 then
	dxDrawImage(x*1200, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1260, y*240, x*40, y*40, "img/star.png")
	end
	if wnated == 3 then
	dxDrawImage(x*1200, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1260, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1320, y*240, x*40, y*40, "img/star.png")
	end
	
	if wanted == 4 then
	dxDrawImage(x*1200, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1260, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1320, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1380, y*240, x*40, y*40, "img/star.png")
	end
	if wanted == 5 then
	dxDrawImage(x*1200, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1260, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1320, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1380, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1440, y*240, x*40, y*40, "img/star.png")
	end
	if wanted == 6 then
	dxDrawImage(x*1200, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1260, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1320, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1380, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1440, y*240, x*40, y*40, "img/star.png")
	dxDrawImage(x*1500, y*240, x*40, y*40, "img/star.png")
	end	

	dxDrawText(math.floor(tostring(colete)).."%", x*1452, y*157, x*1446, y*120, tocolor(0, 0, 0, 255), 0.5, "bankgothic", "center", "center", false, false, true, true, false)
	dxDrawText(math.floor(tostring(colete)).."%", x*1450, y*155, x*1446, y*120, tocolor(255, 255, 255, 255), 0.5, "bankgothic", "center", "center", false, false, true, true, false)
	dxDrawText(math.floor(tostring(vida)).."%", x*1412, y*232, x*1446, y*120, tocolor(0, 0, 0, 255), 0.5, "bankgothic", "center", "center", false, false, true, true, false)
	dxDrawText(math.floor(tostring(vida)).."%", x*1410, y*230, x*1446, y*120, tocolor(255, 255, 255, 255), 0.5, "bankgothic", "center", "center", false, false, true, true, false)
	
	dxDrawText("#000000$"..Money, x*1378, y*402, x*1446, y*40, tocolor(255, 255, 255,255), 0.7, "bankgothic","center","center",false, false,true, true, false) 
	dxDrawText("#000000$#FFFFFF"..Money, x*1376, y*400, x*1446, y*40, tocolor(255, 255, 255,255), 0.7, "bankgothic","center","center",false, false,true, true, false) 
	
	dxDrawText("#000000"..time1, x*1472, y*42, x*1513, y*100, tocolor(255, 255, 255, 255), 0.66, "bankgothic", "center", "center", false, false, true, true, false)
	dxDrawText("#FFFFFF"..time, x*1470, y*40, x*1513, y*100, tocolor(255, 255, 255, 255), 0.66, "bankgothic", "center", "center", false, false, true, true, false)
	
	weapon = getPedWeapon ( getLocalPlayer() )
	dxDrawImage ( x*1200, y*10, x*105, y*105, "img/".. tostring( weapon ) .. ".png" )
	
	if noreloadweapons [getPedWeapon(getLocalPlayer())] then
	dxDrawText(tostring (showammo3),x*1200, y*130, x*1200, y*40,tocolor(255,255,255,255),0.55,"bankgothic","left","top",false, false,false)

	elseif meleespecialweapons [getPedWeapon(getLocalPlayer())] then
	
		else
		dxDrawText("-",x*1042, y*182, x*1330, y*100,tocolor(0,0,0,255),0.55,"bankgothic","center","center",false,false,false)
		dxDrawText("-",x*1040, y*180, x*1330, y*100,tocolor(255,255,255,255),0.55,"bankgothic","center","center",false,false,false)
		dxDrawText(tostring (showammo1),x*1301, y*131, x*1170, y*40,tocolor(0,0,0,255),0.55,"bankgothic","right","top",false,false,false)
		dxDrawText(tostring (showammo1),x*1300, y*130, x*1170, y*40,tocolor(255,255,255,255),0.55,"bankgothic","right","top",false,false,false)
		dxDrawText(tostring (showammo2),x*1197, y*131, x*1200, y*40,tocolor(0,0,0,255),0.55,"bankgothic","left","top",false,false,false)
		dxDrawText(tostring (showammo2),x*1196, y*130, x*1200, y*40,tocolor(255,255,255,255),0.55,"bankgothic","left","top",false,false,false)
		end
	end

function HUD2 ()
    if ( getPreviousWeapon ( ) ==  0 ) then 
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/0.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  1 ) then 
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/1.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  2 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/2.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  3 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/3.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  4 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/4.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  5 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/5.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  6 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/6.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  7 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/7.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  8 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/8.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  9 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/9.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  10 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/10.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  11 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/11.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  12 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/12.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  14 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/14.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  15 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/15.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  16 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/16.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  17 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/17.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end


    if ( getPreviousWeapon ( ) ==  18 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/18.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  22 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/22.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  23 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/23.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  24 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/24.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  25 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/25.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  26 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/26.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  27 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/27.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  28 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/28.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  29 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/29.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  30 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/30.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  31 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/31.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  32 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/32.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  33 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/33.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  34 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/34.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end
    if ( getPreviousWeapon ( ) ==  35 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/35.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  36 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/36.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  37 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/37.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  38 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/38.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  39 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/39.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  40 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/40.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  41 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/41.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  42 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/42.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  43 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/43.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  44 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/44.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  45 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/45.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getPreviousWeapon ( ) ==  46 ) then
        dxDrawImage ( x*1113, y*25, x*80, y*80, "img/46.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end
end

  function HUD3 ()
    if ( getNextWeapon ( ) ==  0 ) then 
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/0.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  1 ) then 
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/1.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  2 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/2.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  3 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/3.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  4 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/4.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  5 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/5.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  6 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/6.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  7 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/7.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  8 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/8.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  9 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/9.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  10 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/10.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  11 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/11.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  12 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/12.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  14 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/14.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  15 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/15.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  16 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/16.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  17 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/17.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end


    if ( getNextWeapon ( ) ==  18 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/18.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  22 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/22.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  23 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/23.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  24 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/24.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  25 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/25.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  26 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/26.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  27 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/27.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  28 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/28.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  29 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/29.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  30 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/30.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  31 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/31.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  32 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/32.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  33 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/33.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  34 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/34.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end
    if ( getNextWeapon ( ) ==  35 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/35.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  36 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/36.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  37 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/37.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  38 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/38.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  39 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/39.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  40 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/40.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  41 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/41.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  42 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/42.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  43 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/43.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  44 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/44.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  45 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/45.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end

    if ( getNextWeapon ( ) ==  46 ) then
        dxDrawImage ( x*1313, y*25, x*80, y*80, "img/46.png",0.0,0.0,0.0,tocolor(255,255,255,160),false )
    end
end