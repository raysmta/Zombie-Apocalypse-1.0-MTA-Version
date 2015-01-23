safecol = createColCuboid ( 2026.2687, -1421.8105, 16.9921, 255, 255, 255 )
safeZoneRadar = createRadarArea ( 2026, -1421, 55, 55, 0, 255, 0 )
setElementData (safeZoneRadar, "zombieProof", true)

safecoln = createColCuboid ( 1542.28125, -1673.5373535156, 13.554195404053, 80, 255, 80 )
safeZoneRadarn = createRadarArea ( 1542.4267578125, -1675.8065185547, 55, 55, 0, 255, 0 )
setElementData (safeZoneRadarn, "zombieProof", true)



function enterZone(hitPlayer,thePlayer)
local skin = getElementModel (hitPlayer)
      if ( skin == 29 ) then
    toggleControl (hitPlayer, "fire", true )
    toggleControl (hitPlayer, "aim_weapon", true)
    toggleControl (hitPlayer, "vehicle_fire", true)
    outputChatBox("You have entered the safe zone!", hitPlayer, 0, 255, 0)
       else
         killPed (hitPlayer)
end
end
addEventHandler( "onColShapeHit", safecol, enterZone )

function enterZonen(hitPlayer,thePlayer)
local skin = getElementModel (hitPlayer)
      if ( skin == 29 ) then
    toggleControl (hitPlayer, "fire", true )
    toggleControl (hitPlayer, "aim_weapon", true)
    toggleControl (hitPlayer, "vehicle_fire", true)
    outputChatBox("You have entered the safe zone!", hitPlayer, 0, 255, 0)
       else
         killPed (hitPlayer)
end
end
addEventHandler( "onColShapeHit", safecoln, enterZonen )


function leaveZonen(hitPlayer,thePlayer)
local skin = getElementModel (hitPlayer)
    toggleControl (hitPlayer, "fire", true)
    toggleControl (hitPlayer, "aim_weapon", true)
    toggleControl (hitPlayer, "vehicle_fire", true)
    outputChatBox("You have left the safe zone!", hitPlayer, 255, 0, 0)
 if not ( skin == 29 )  then
  killPed (hitPlayer)
end
end
addEventHandler( "onColShapeLeave", safecoln, leaveZonen )

function leaveZone(hitPlayer,thePlayer)
local skin = getElementModel (hitPlayer)
    toggleControl (hitPlayer, "fire", true)
    toggleControl (hitPlayer, "aim_weapon", true)
    toggleControl (hitPlayer, "vehicle_fire", true)
    outputChatBox("You have left the safe zone!", hitPlayer, 255, 0, 0)
 if not ( skin == 29 )  then
  killPed (hitPlayer)
end
end
addEventHandler( "onColShapeLeave", safecol, leaveZone )
