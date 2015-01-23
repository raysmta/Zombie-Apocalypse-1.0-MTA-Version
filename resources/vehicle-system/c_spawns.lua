vehSpawn = createMarker( 1535.73499, -1685.40210, 12.5, "cylinder", 1.0, 255, 255, 255 )

function vehMenu()
vehMenu = guiCreateWindow(195, 161, 435, 259, "Zombie Apocalypse 1.0", false)
guiWindowSetSizable(vehMenu, false)

labelOne = guiCreateLabel(10, 25, 411, 54, "To get starter, choose a vehicle listed below, and hit spawn.\nYour vehicle will spawn beside you.\nRemember to spawn it quickly! Don't let the zombies catch you!", false, vehMenu)
credLabel = guiCreateLabel(10, 83, 209, 69, "Script Information:\nName: Vehicle Spawn System\nScript Version: 1.0\nAuthor: RaysMTA", false, vehMenu)
btnBobcat = guiCreateButton(11, 205, 108, 38, "Bobcat", false, vehMenu)
btnFaggio = guiCreateButton(10, 156, 108, 38, "Faggio", false, vehMenu)
btnSultan = guiCreateButton(161, 156, 108, 38, "Sultan", false, vehMenu)
btnSanchez = guiCreateButton(161, 204, 108, 38, "Sanchez", false, vehMenu)
btnBMX = guiCreateButton(313, 156, 108, 38, "BMX", false, vehMenu)
btnMountain = guiCreateButton(313, 204, 108, 38, "Mountain Bike", false, vehMenu)    

if source == vehSpawn then
guiSetVisible(vehMenu, true)
showCursor(true)
   end
end
addEventHandler("onClientMarkerHit", getRootElement(), vehMenu)


function btnBobcat()
if source == btnBobcat then
triggerServerEvent("btnBobcat", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnBobcat)

function btnFaggio()
if source == btnFaggio then
triggerServerEvent("btnFaggio", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnFaggio)

function btnSultan()
if source == btnSultan then
triggerServerEvent("btnSultan", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnSultan)

function btnSanchez()
if source == btnSanchez then
triggerServerEvent("btnSanchez", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnSanchez)

function btnSanchez()
if source == btnSanchez then
triggerServerEvent("btnSanchez", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnSanchez)

function btnBMX()
if source == btnBMX then
triggerServerEvent("btnBMX", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnBMX)

function btnMountain() 
if source == btnMountain then
triggerServerEvent("btnMountain", resourceRoot)
guiSetVisible(vehMenu, false)
showCursor(false)
   end
end
addEventHandler("onClientGUIClick", getRootElement(), btnMountain)