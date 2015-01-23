
addEvent ("vehInfernus",true)
addEventHandler ("vehInfernus",root,
        function (modelID)
                if tonumber (modelID) then
                        local x,y,z = getElementPosition (source)
                        local theVehicle = spawnVehicle( modelID, x, y + 1, z + 2 )
                        warpPedIntoVehicle( source, theVehicle )
                end
        end
)

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
    outputChatBox ( "You have spawned a "..carName.."!",source,255,255,90,true)       
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