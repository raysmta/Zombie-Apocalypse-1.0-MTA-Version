--vehicle spawning
 vehicles = {}
function spawnv ( id )
  if getElementDimension (source) == 10 then
  outputChatBox ( "You can't use vehicle here", source, 255, 0, 0 )
  else 
  if vehicles[source] and isElement(vehicles[source]) then
    destroyElement(vehicles[source])
  end
local x, y, z = getElementPosition ( source )
local xr, yr, zr = getElementRotation ( source )
vehicles[source] = createVehicle ( id, x, y, z + 0.5, xr, yr, zr )
  warpPedIntoVehicle(source, vehicles[source])
  end
end


addEvent ( "spawn", true )
rootElement = getRootElement()
addEventHandler ( "spawn", rootElement, spawnv )

function destroyveh ()
  if vehicles[source] and isElement(vehicles[source]) then
    destroyElement(vehicles[source])
	else 
	outputChatBox( "There is no old car.", source )
	  end
	end
	
	addEvent ( "destroy", true )
	addEventHandler ( "destroy", rootElement, destroyveh )