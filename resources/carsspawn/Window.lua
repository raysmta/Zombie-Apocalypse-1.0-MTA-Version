GUIEditor = {
    gridlist = {},
    window = {},
    button = {}
}

cars = {
    {579},
	{400},
	{404},
	{489},
	{505},
	{541},
    {518},
	{466},
	{506},
	{469},
	{550},
    {555},
	{492},
  --{carID},
	}

local l, w = guiGetScreenSize()
GUIEditor.window[1] = guiCreateWindow((l - 144) / 2, (w - 353) / 2, 144, 353, "Window", false)
guiWindowSetSizable(GUIEditor.window[1], false)
guiSetVisible(GUIEditor.window[1],false)
guiSetAlpha(GUIEditor.window[1], 1.00)
guiSetProperty(GUIEditor.window[1], "CaptionColour", "FFFF5A5A")

GUIEditor.gridlist[1] = guiCreateGridList(9, 24, 126, 265, false, GUIEditor.window[1])
guiGridListAddColumn(GUIEditor.gridlist[1], "#", 0.3)
guiGridListAddColumn(GUIEditor.gridlist[1], "Vehicle", 0.9)
GUIEditor.button[1] = guiCreateButton(9, 295, 126, 22, "get", false, GUIEditor.window[1])
guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FFFF5A5A")
guiSetFont(GUIEditor.button[1], "default-bold-small")
GUIEditor.button[2] = guiCreateButton(9, 321, 126, 22, "close", false, GUIEditor.window[1])
guiSetProperty(GUIEditor.button[2], "NormalTextColour", "FFB50000")
guiSetFont(GUIEditor.button[2], "default-bold-small")

for i,v in ipairs (cars) do
    local carName = getVehicleNameFromModel (v[1])
    local row = guiGridListAddRow (GUIEditor.gridlist[1])
	guiGridListSetItemText (GUIEditor.gridlist[1], row, 1, i.."-", false, true)
    guiGridListSetItemText (GUIEditor.gridlist[1], row, 2, carName, false, true)
	guiGridListSetItemColor(GUIEditor.gridlist[1], row, 1, 255, 90, 90, 255)
end

addEvent ("openMean", true)
function openMean ()
if (getLocalPlayer() == source) then
guiSetVisible(GUIEditor.window[1],true)
showCursor(true)
end
end
addEventHandler ("openMean", getRootElement(), openMean)

addEvent ("closeOpenMean", true)
function closeOpenMean ()
if (getLocalPlayer() == source) then
guiSetVisible(GUIEditor.window[1],false)
showCursor(false)
end
end
addEventHandler ("closeOpenMean", getRootElement(), closeOpenMean)

addEventHandler ("onClientGUIClick", GUIEditor.button[2],
function (button, state, absoluteX, absoluteYe)
 guiSetVisible(GUIEditor.window[1],false)
 showCursor(false)
end)
function trigger ()
if (guiGridListGetSelectedItem (GUIEditor.gridlist[1])) then
local car = guiGridListGetItemText (GUIEditor.gridlist[1], guiGridListGetSelectedItem (GUIEditor.gridlist[1]), 2)
if car == "" or car == nil then outputChatBox( "please selected car from list.",255,90,90,true ) return end
  triggerServerEvent ("getCar", getLocalPlayer(), car)
  guiSetVisible(GUIEditor.window[1],false)
  showCursor(false)
end
end

addEventHandler ("onClientGUIClick", GUIEditor.button[1],
function (button, state, absoluteX, absoluteYe)
trigger(getLocalPlayer())
end)

addEventHandler ("onClientGUIDoubleClick", GUIEditor.gridlist[1],
function (button, state, absoluteX, absoluteYe)
trigger(getLocalPlayer())
end)