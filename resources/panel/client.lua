 
wPanel = guiCreateWindow(14, 203, 176, 130, "ZA 1.0 - Panel", false)
guiWindowSetSizable(wPanel, false)
 
btnChar = guiCreateButton(14, 35, 150, 25, "Characters", false, wPanel)
btnVeh = guiCreateButton(14, 86, 150, 25, "Vehicles", false, wPanel)
 
 
wChar = guiCreateWindow(528, 159, 255, 387, "", false)
guiWindowSetSizable(wChar, false)

cGrid = guiCreateGridList(9, 15, 236, 338, false, wChar)
guiGridListAddColumn(cGrid, "Characters", 0.9)
for i = 1, 5 do
    guiGridListAddRow(cGrid)
end
guiGridListSetItemText(cGrid, 0, 1, "Army Skin 1", false, false)
guiGridListSetItemText(cGrid, 1, 1, "Army Skin 2", false, false)
guiGridListSetItemText(cGrid, 2, 1, "Army Skin 3", false, false)
guiGridListSetItemText(cGrid, 3, 1, "Army Skin 4", false, false)
guiGridListSetItemText(cGrid, 4, 1, "Army Skin 5", false, false)
btnClose = guiCreateButton(192, 358, 53, 19, "Close", false, wChar)

wVeh = guiCreateWindow(250, 159, 255, 387, "", false)
guiWindowSetSizable(wVeh, false)

vGrid = guiCreateGridList(9, 18, 236, 331, false, wVeh)
guiGridListAddColumn(vGrid, "Vehicles", 0.9)
for i = 1, 29 do
    guiGridListAddRow(vGrid)
end
guiGridListSetItemText(vGrid, 0, 1, "BF-400", false, false)
guiGridListSetItemText(vGrid, 1, 1, "BMX", false, false)
guiGridListSetItemText(vGrid, 2, 1, "Banshee", false, false)
guiGridListSetItemText(vGrid, 3, 1, "Bike", false, false)
guiGridListSetItemText(vGrid, 4, 1, "Bullet", false, false)
guiGridListSetItemText(vGrid, 5, 1, "Cheetah", false, false)
guiGridListSetItemText(vGrid, 6, 1, "Comet", false, false)
guiGridListSetItemText(vGrid, 7, 1, "Elegy", false, false)
guiGridListSetItemText(vGrid, 8, 1, "FCR-900", false, false)
guiGridListSetItemText(vGrid, 9, 1, "Faggio", false, false)
guiGridListSetItemText(vGrid, 10, 1, "Freeway", false, false)
guiGridListSetItemText(vGrid, 11, 1, "Hotknife", false, false)
guiGridListSetItemText(vGrid, 12, 1, "Hotring Racer", false, false)
guiGridListSetItemText(vGrid, 13, 1, "Infernus", false, false)
guiGridListSetItemText(vGrid, 14, 1, "Jester", false, false)
guiGridListSetItemText(vGrid, 15, 1, "Jetmax", false, false)
guiGridListSetItemText(vGrid, 16, 1, "Moutain Bike", false, false)
guiGridListSetItemText(vGrid, 17, 1, "NRG-500", false, false)
guiGridListSetItemText(vGrid, 18, 1, "PCJ-600", false, false)
guiGridListSetItemText(vGrid, 19, 1, "Pizza Boy", false, false)
guiGridListSetItemText(vGrid, 20, 1, "Sanchez", false, false)
guiGridListSetItemText(vGrid, 21, 1, "Stratum", false, false)
guiGridListSetItemText(vGrid, 22, 1, "Sultan", false, false)
guiGridListSetItemText(vGrid, 23, 1, "Super GT", false, false)
guiGridListSetItemText(vGrid, 24, 1, "Turismo", false, false)
guiGridListSetItemText(vGrid, 25, 1, "Uranus", false, false)
guiGridListSetItemText(vGrid, 26, 1, "Wayfarer", false, false)
guiGridListSetItemText(vGrid, 27, 1, "Windsor", false, false)
guiGridListSetItemText(vGrid, 28, 1, "ZR-350", false, false)
btnCloseT = guiCreateButton(192, 359, 53, 17, "Close", false, wVeh)
vSpawn = guiCreateButton(12, 360, 59, 17, "Spawn", false, wVeh)    


guiSetVisible( wChar, false)
guiSetVisible( wVeh, false)
guiSetVisible(wPanel, false)
showCursor(false)
 
GUIEditor = {
    gridlist = {},
    window = {},
    button = {}
}

cars = {
    {602}, 
	{545}, 
	{496}, 
	{517}, 
	{401}, 
	{410}, 
	{518}, 
	{600}, 
	{527}, 
	{436},
	{589}, 
	{580}, 
	{419}, 
	{439}, 
	{533}, 
	{549},
	{526}, 
	{491}, 
	{474}, 
	{445}, 
	{467}, 
	{604}, 
	{426}, 
	{507}, 
	{547}, 
	{585},
    {405}, 
	{587},
	{409}, 
	{466}, 
	{550}, 
	{492}, 
	{566}, 
	{546},
	{540},
	{551}, 
	{421}, 
	{516}, 
	{529},
	{592}, 
	{553},
	{577}, 
	{488}, 
	{511}, 
	{497}, 
	{548}, 
	{563},
	{512}, 
	{476}, 
	{593}, 
	{447}, 
	{519}, 
	{520}, 
	{460},
    {417}, 
	{469}, 
	{487}, 
	{513}, 
	{581}, 
	{510}, 
	{509}, 
	{522}, 
	{481}, 
	{461}, 
	{462}, 
	{448}, 
	{521}, 
	{468}, 
	{463}, 
	{586}, 
	{472}, 
	{473}, 
	{493}, 
	{595}, 
	{484}, 
	{430}, 
	{453}, 
	{452}, 
	{446}, 
	{454}, 
	{485}, 
	{552}, 
	{431}, 
    {438}, 
	{437}, 
	{574}, 
	{420}, 
	{525}, 
	{408}, 
	{416},
	{596}, 
	{433},
	{597},
	{427}, 
	{599}, 
	{490}, 
	{528}, 
	{601}, 
	{407},
	{428},
	{544},
	{523},
	{470},
	{598}, 
	{499},
	{588},
	{609},
	{403},
	{498},
	{514}, 
	{524}, 
    {423}, 
	{532},
	{414},
	{578},
	{443},
	{486},
	{515},
	{406}, 
	{531},
	{573},
	{456},
	{455}, 
	{459},
	{543},
	{422},
	{583},
	{482},
	{478},
	{605},
	{554}, 
	{530},
	{418},
	{572},
	{582}, 
	{413}, 
	{440},
	{536},
	{575},
	{534}, 
    {567}, 
	{535}, 
	{576}, 
	{412},
	{402},
	{542}, 
	{603}, 
	{475},
	{449},
	{537}, 
	{538}, 
	{441}, 
	{464},
	{501}, 
	{465},
	{564}, 
	{568},
	{557}, 
	{424},
	{471},
	{504},
	{495}, 
	{457}, 
	{539}, 
	{483}, 
	{508}, 
	{571}, 
	{500}, 
    {444}, 
	{556},
	{429}, 
	{411},
	{541},
	{559},
	{415},
	{561},
	{480}, 
	{560}, 
	{562},
	{506},
	{565},
	{451}, 
	{434},
	{558},
	{494},
	{555},
	{502},
	{477},
	{503}, 
	{579},
	{400},
	{404},
	{489},
	{505},
	{479},
	{442},
	{458}, 
	{590},
	{594}
}

local l, w = guiGetScreenSize()
GUIEditor.window[1] = guiCreateWindow((l - 144) / 2, (w - 353) / 2, 311, 368, "", false)
guiWindowSetSizable(GUIEditor.window[1], false)
guiSetVisible(GUIEditor.window[1],false)
guiSetAlpha(GUIEditor.window[1], 1.00)
guiSetProperty(GUIEditor.window[1], "CaptionColour", "FFFF5A5A")

GUIEditor.gridlist[1] = guiCreateGridList(9, 24, 292, 264, false, GUIEditor.window[1])
guiGridListAddColumn(GUIEditor.gridlist[1], "Vehicle", 0.9)
GUIEditor.button[1] = guiCreateButton(9, 295, 292, 31, "Spawn", false, GUIEditor.window[1])
guiSetFont(GUIEditor.button[1], "default-bold-small")
GUIEditor.button[2] = guiCreateButton(9, 331, 292, 27, "Close", false, GUIEditor.window[1])
guiSetFont(GUIEditor.button[2], "default-bold-small")

for i,v in ipairs (cars) do
    local carName = getVehicleNameFromModel (v[1])
    local row = guiGridListAddRow (GUIEditor.gridlist[1])
	--guiGridListSetItemText (GUIEditor.gridlist[1], row, 1, i..":", false, true)
    guiGridListSetItemText (GUIEditor.gridlist[1], row, 1, carName, false, true)
	--guiGridListSetItemColor(GUIEditor.gridlist[1], row, 1, 255, 90, 90, 255)
end

addEvent ("openMean", true)
function openMean ()
if (getLocalPlayer() == source) then
guiSetVisible(GUIEditor.window[1],true)
end
end
addEventHandler ("openMean", getRootElement(), openMean)

addEvent ("closeOpenMean", true)
function closeOpenMean ()
if (getLocalPlayer() == source) then
guiSetVisible(GUIEditor.window[1],false)
end
end
addEventHandler ("closeOpenMean", getRootElement(), closeOpenMean)


function trigger ()
if (guiGridListGetSelectedItem (GUIEditor.gridlist[1])) then
local car = guiGridListGetItemText (GUIEditor.gridlist[1], guiGridListGetSelectedItem (GUIEditor.gridlist[1]), 1)
if car == "" or car == nil then outputChatBox( "Please select a vehicle, from the list below!",255,255,255,true ) return end
  triggerServerEvent ("getCar", getLocalPlayer(), car)
  guiSetVisible(GUIEditor.window[1],false)
 
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
 
bindKey('f1','down',
        function()
                guiSetVisible(wPanel, not guiGetVisible(wPanel))
                showCursor(not isCursorShowing())
        end
)
 
function btnChars()
        if source == btnChar then
                guiSetVisible( wChar, true )
               
        else
        if source == btnClose then
                guiSetVisible( wChar, false)
 else
        if source == btnVeh then
		        guiSetVisible( GUIEditor.window[1], true)
		else
		if source == GUIEditor.button[2] then
		       guiSetVisible( GUIEditor.window[1], false)
           
else

local row, col = guiGridListGetSelectedItem(cGrid)
if ( row == 0 ) and ( col == 1) then
setElementModel(localPlayer, 29)
else
if ( row == 0 ) and ( col == 1) then
setElementModel(localPlayer, 30)
else
if ( row == 1 ) and ( col == 1) then
setElementModel(localPlayer, 31)
else
if ( row == 2 ) and ( col == 1) then
setElementModel(localPlayer, 32)
else
if ( row == 3 ) and ( col == 1) then
setElementModel(localPlayer, 33)
else
if ( row == 4 ) and ( col == 1) then
setElementModel(localPlayer, 34)
else
                if source == vSpawn then
                        if guiGridListGetSelectedItem( vGrid ) ~= -1 then
                                local row = guiGridListGetSelectedItem( vGrid )
                                local selectedItem = guiGridListGetItemText( vGrid, row, 1 )
                                triggerServerEvent ("vehInfernus",localPlayer,selectedItem)
                        else
                                outputChatBox ("You did not select a vehicle.",255,0,0)
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
end
end
end
addEventHandler("onClientGUIClick", getRootElement(), btnChars)

