markers = {
	{1536.0302734375,-1683.4799804688,12.546875}
  --{ x, y, z },
  }


for i,v in ipairs (markers) do
	marker = createMarker(v[1], v[2], v[3], "cylinder", get("markerSize"), get("markerColorR"), get("markerColorG"), get("markerColorB"), get("markerAlpha"))
	blip = createBlip ( v[1] , v[2] , v[3] , get("blipIconID") )
end

veh = {}

addEvent ("getCar", true)
addEventHandler ("getCar", getRootElement(),
function(car)
    if veh[source] and isElement( veh[source] ) then destroyElement( veh[source] ) 
	veh[source] = nil 
	end
    local carID = getVehicleModelFromName (car)
    local x,y,z = getElementPosition(source)
    local carName = getVehicleNameFromModel (carID)
    veh[source] = createVehicle(carID, x,y,z)
    setVehicleColor(veh[source], 255, 255, 255)
    warpPedIntoVehicle(source, veh[source])
    outputChatBox ( "* #FF5A5ACreated #ffffff"..carName.." #FF5A5Awas successful!",source,255,90,90,true)       
end
)

addEventHandler ( "onPlayerQuit", getRootElement(),	
function ()
	if veh[source] and isElement( veh[source] ) then destroyElement( veh[source] ) 
	veh[source] = nil 
	end
end)
	
function markerHit (hitPlayer, matchingDimension)
if isPedInVehicle (hitPlayer) then return end
if getElementType(hitPlayer) == "player" then
    triggerClientEvent ("openMean", hitPlayer)
end
end
addEventHandler ("onMarkerHit", resourceRoot, markerHit)

function markerLeave (hitPlayer, matchingDimension)
if getElementType(hitPlayer) == "player" then
   triggerClientEvent ("closeOpenMean", hitPlayer)
end
end
addEventHandler ("onMarkerLeave", resourceRoot, markerLeave)