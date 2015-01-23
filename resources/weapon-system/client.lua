local scr = {guiGetScreenSize() }
local w, h = 557, 371
local x, y = (scr[1]/2)-(w/2), (scr[2]/2)-(h/2)

wepMenu = guiCreateWindow(x, y, w, h, "", false)
guiWindowSetSizable(wepMenu, false)

mTab = guiCreateTabPanel(9, 29, 538, 332, false, wepMenu)

wepTab = guiCreateTab("Weapons", mTab)

wepLabel = guiCreateLabel(7, 11, 521, 50, "On this tab you can buy weapons from the options below, only various weapons\nare available.\nNOTE : You can only buy the weapons, ammo is seperate!", false, wepTab)
guiSetFont(wepLabel, "clear-normal")
wPistol = guiCreateButton(17, 88, 111, 36, "Pistol - $250", false, wepTab)
wSawn = guiCreateButton(144, 88, 111, 36, "Sawn-Off - $800", false, wepTab)
wSpaz = guiCreateButton(279, 88, 111, 36, "SPAZ-12 - $1,025", false, wepTab)
wUzi = guiCreateButton(407, 88, 111, 36, "Uzi - $1,250", false, wepTab)
wMp5 = guiCreateButton(17, 168, 111, 36, "MP5 - $1,500", false, wepTab)
wSniper = guiCreateButton(144, 168, 111, 36, "Sniper - $2,105", false, wepTab)
wMinigun = guiCreateButton(279, 168, 111, 36, "Minigun - $50,000", false, wepTab)
wRocket = guiCreateButton(407, 168, 111, 36, "Rocket - $25,000", false, wepTab)

ammoTab = guiCreateTab("Ammo", mTab)

aPistol = guiCreateButton(8, 10, 141, 49, "Pistol x500 - $250", false, ammoTab)
aSawn = guiCreateButton(197, 10, 141, 50, "Sawn-Off x500 - $650", false, ammoTab)
aSpaz = guiCreateButton(376, 9, 141, 50, "SPAZ-12 x500 - $1,850", false, ammoTab)
aMinigun = guiCreateButton(376, 93, 141, 50, "Minigun x500 - $10,450", false, ammoTab)
aSniper = guiCreateButton(197, 93, 141, 50, "Sniper x500 - $3,010", false, ammoTab)
aUzi = guiCreateButton(8, 93, 141, 50, "Uzi x500 - $2,199", false, ammoTab)
aRocket = guiCreateButton(8, 183, 141, 50, "Rocket x500 - $15,450", false, ammoTab)
aMf = guiCreateButton(197, 183, 141, 50, "M4 x500 - $1,041", false, ammoTab)
aAk = guiCreateButton(376, 183, 141, 50, "AK-47 x500 - $1,001", false, ammoTab)

spTab = guiCreateTab("Special", mTab)

spArmour = guiCreateButton(12, 13, 106, 44, "Armour - $500", false, spTab)
spJetpack = guiCreateButton(148, 13, 106, 44, "Coming Soon...", false, spTab)
spPara = guiCreateButton(287, 13, 106, 44, "Parachute - $80", false, spTab)
spCamera = guiCreateButton(422, 13, 106, 44, "Camera - $45", false, spTab)    

guiSetVisible(wepMenu, false)
showCursor(false)

bindKey('f3','down',
function()
guiSetVisible(wepMenu, not guiGetVisible(wepMenu))
showCursor(not isCursorShowing())
end
)

function bWep()
if source == wPistol then
triggerServerEvent("bPistol", localPlayer)
else
if source == wSawn then
triggerServerEvent("bSawn", localPlayer)
else
if source == wSpaz then
triggerServerEvent("bSpaz", localPlayer)
else
if source == wUzi then
triggerServerEvent("bUzi", localPlayer)
else
if source == wMp5 then
triggerServerEvent("bMp5", localPlayer)
else
if source == wSniper then
triggerServerEvent("bSniper", localPlayer)
else 
if source == wMinigun then
triggerServerEvent("bMinigun", localPlayer)
else
if source == wMinigun then
triggerServerEvent("bMinigun", localPlayer)
else
if source == wRocket then
triggerServerEvent("bRocket", localPlayer)
                 end
               end
            end
          end
        end
      end
    end
  end
 end
end
addEventHandler("onClientGUIClick", getRootElement(), bWep)

function bAmmo()
if source == aSawn then
triggerServerEvent("aSawn", localPlayer)
else 
if source == aPistol then
triggerServerEvent("aPistol", localPlayer)
else 
if source == aSpaz then
triggerServerEvent("aSpaz", localPlayer)
else 
if source == aMinigun then
triggerServerEvent("aMinigun", localPlayer)
else 
if source == aSniper then
triggerServerEvent("aSniper", localPlayer)
else 
if source == aUzi then
triggerServerEvent("aUzi", localPlayer)
else 
if source == aRocket then
triggerServerEvent("aRocket", localPlayer)
else 
if source == aMf then
triggerServerEvent("aMf", localPlayer)
else 
if source == aAk then
triggerServerEvent("aAk", localPlayer)
           end
          end
         end
        end
       end
      end
     end
    end
   end
 end
addEventHandler("onClientGUIClick", getRootElement(), bAmmo)

function bSpec()
if source == spArmour then
triggerServerEvent("spArmour", localPlayer)
else
if source == spPara then
triggerServerEvent("spPara", localPlayer)
else
if source == spCamera then
triggerServerEvent("spCamera", localPlayer)
      end
    end
  end
end
addEventHandler("onClientGUIClick", getRootElement(), bSpec)