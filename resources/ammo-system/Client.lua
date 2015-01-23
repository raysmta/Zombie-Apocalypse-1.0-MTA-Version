--**********************************************************--
-- Weapons Shop By =x=|DoN|=x= ( Don't remove this please )
-- Skype : DON.81
-- Email : S.x.z@hotmail.com
-- Enjoy and have fun ;3
-- File : Client.lua
--**********************************************************--

GUIEditor = {
    button = {},
    window = {},
    staticimage = {}
}
addEventHandler("onClientResourceStart", resourceRoot,
    function()
        GUIEditor.window[1] = guiCreateWindow(98, 46, 654, 450, "Weapons Shop By =x=|DoN|=x=", false)
        guiWindowSetSizable(GUIEditor.window[1], false)
		guiSetVisible(GUIEditor.window[1], false)
		-- Button
        GUIEditor.button[1] = guiCreateButton(588, 25, 54, 36, "Close", false, GUIEditor.window[1])
        GUIEditor.button[2] = guiCreateButton(10, 147, 77, 34, "Silenced\n1800$", false, GUIEditor.window[1])
        GUIEditor.button[3] = guiCreateButton(102, 147, 77, 34, "Pistol\n2000$", false, GUIEditor.window[1])
        GUIEditor.button[4] = guiCreateButton(196, 147, 77, 34, "Deagle\n2500$", false, GUIEditor.window[1])
        GUIEditor.button[5] = guiCreateButton(290, 147, 77, 34, "Sawn-Off\n3500$", false, GUIEditor.window[1])
        GUIEditor.button[6] = guiCreateButton(384, 147, 77, 34, "Shotgun\n3600$", false, GUIEditor.window[1])
        GUIEditor.button[7] = guiCreateButton(477, 147, 77, 34, "SPAZ-12\n4000$", false, GUIEditor.window[1])
        GUIEditor.button[8] = guiCreateButton(568, 147, 74, 34, "MP5\n3600$", false, GUIEditor.window[1])
        GUIEditor.button[9] = guiCreateButton(10, 268, 77, 34, "Tec-9\n2500$", false, GUIEditor.window[1])
        GUIEditor.button[10] = guiCreateButton(102, 268, 77, 34, "Uzi\n2800$", false, GUIEditor.window[1])
        GUIEditor.button[11] = guiCreateButton(196, 268, 77, 34, "M4\n5100$", false, GUIEditor.window[1])
        GUIEditor.button[12] = guiCreateButton(290, 268, 77, 34, "Ak-47\n5000$", false, GUIEditor.window[1])
        GUIEditor.button[13] = guiCreateButton(384, 268, 77, 34, "Sniper\n6000$", false, GUIEditor.window[1])
        GUIEditor.button[14] = guiCreateButton(477, 268, 77, 34, "Rifle\n5800$", false, GUIEditor.window[1])
        GUIEditor.button[15] = guiCreateButton(568, 268, 74, 34, "Grenade\n20000$", false, GUIEditor.window[1])
        GUIEditor.button[16] = guiCreateButton(10, 389, 77, 34, "Teargas\n20000$", false, GUIEditor.window[1])
        GUIEditor.button[17] = guiCreateButton(102, 389, 77, 34, "Molotov\n20000$", false, GUIEditor.window[1])
        GUIEditor.button[18] = guiCreateButton(196, 389, 77, 34, "Satchel\n20000$", false, GUIEditor.window[1])
        GUIEditor.button[19] = guiCreateButton(292, 389, 75, 34, "Armor\n1500$", false, GUIEditor.window[1])
		-- Images
        GUIEditor.staticimage[1] = guiCreateStaticImage(102, 72, 73, 69, "Images/Pistol.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[2] = guiCreateStaticImage(10, 70, 72, 71, "Images/Silenced.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[3] = guiCreateStaticImage(196, 72, 73, 69, "Images/Deagle.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[4] = guiCreateStaticImage(290, 72, 73, 69, "Images/Sawn-Off.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[5] = guiCreateStaticImage(384, 72, 73, 69, "Images/Shotgun.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[6] = guiCreateStaticImage(477, 72, 73, 69, "Images/Spaz.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[7] = guiCreateStaticImage(570, 71, 72, 70, "Images/Mp5.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[8] = guiCreateStaticImage(10, 191, 72, 71, "Images/Tec.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[9] = guiCreateStaticImage(102, 191, 73, 70, "Images/Uzi.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[10] = guiCreateStaticImage(196, 191, 73, 70, "Images/M4.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[11] = guiCreateStaticImage(290, 191, 73, 70, "Images/Ak.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[12] = guiCreateStaticImage(384, 191, 73, 69, "Images/Sniper.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[13] = guiCreateStaticImage(477, 190, 73, 70, "Images/Rifle.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[14] = guiCreateStaticImage(570, 190, 72, 71, "Images/Grenade.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[15] = guiCreateStaticImage(10, 312, 72, 72, "Images/TearGas.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[16] = guiCreateStaticImage(101, 312, 74, 71, "Images/Molotov.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[17] = guiCreateStaticImage(197, 312, 72, 71, "Images/Satchel.png", false, GUIEditor.window[1])
        GUIEditor.staticimage[18] = guiCreateStaticImage(291, 312, 72, 73, "Images/Armor.png", false, GUIEditor.window[1]) 
		-- Font
        guiSetFont(GUIEditor.button[1], "default-bold-small")
        guiSetFont(GUIEditor.button[2], "default-bold-small")
        guiSetFont(GUIEditor.button[3], "default-bold-small")
        guiSetFont(GUIEditor.button[4], "default-bold-small")
        guiSetFont(GUIEditor.button[5], "default-bold-small")
        guiSetFont(GUIEditor.button[6], "default-bold-small")
        guiSetFont(GUIEditor.button[7], "default-bold-small")
        guiSetFont(GUIEditor.button[8], "default-bold-small")
        guiSetFont(GUIEditor.button[9], "default-bold-small")
        guiSetFont(GUIEditor.button[10], "default-bold-small")
        guiSetFont(GUIEditor.button[11], "default-bold-small")
        guiSetFont(GUIEditor.button[12], "default-bold-small")
        guiSetFont(GUIEditor.button[13], "default-bold-small")
        guiSetFont(GUIEditor.button[14], "default-bold-small")
        guiSetFont(GUIEditor.button[15], "default-bold-small")
        guiSetFont(GUIEditor.button[16], "default-bold-small")
		guiSetFont(GUIEditor.button[17], "default-bold-small")
        guiSetFont(GUIEditor.button[18], "default-bold-small")
        guiSetFont(GUIEditor.button[19], "default-bold-small")
  		
    end
)

--if you want add Marker# {},
Mark = {
{296, -37.9, 1000.5},
{288, -108, 1000},
{294, -79, 1000},
{312, -165, 999},
}
--Marker
local Marker1 = createMarker(296, -37.9, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker1,1)
setElementDimension (Marker1, 0)
local Marker2 = createMarker(289, -109, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker2,6)
setElementDimension (Marker2, 6)
local Marker3 = createMarker(294, -80, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker3,4)
setElementDimension (Marker3, 0)
local Marker4 = createMarker(294, -80, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker4,4)
setElementDimension (Marker4, 1)
local Marker5 = createMarker(294, -80, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker5,4)
setElementDimension (Marker5, 2)
local Marker5 = createMarker(294, -80, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker5,4)
setElementDimension (Marker5, 3)
local Marker6 = createMarker(289, -109, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker6,6)
setElementDimension (Marker6, 3)
local Marker7 = createMarker(289, -109, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker7,6)
setElementDimension (Marker7, 4)
local Marker8 = createMarker(312, -165, 998.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker8,6)
setElementDimension (Marker8, 0)
local Marker9 = createMarker(296, -37.9, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker9,1)
setElementDimension (Marker9, 1)
local Marker10 = createMarker(289, -109, 1000.5, "cylinder", 1.5, 250,250,0)
setElementInterior (Marker10,6)
setElementDimension (Marker10, 5)
--Blip
createBlip( -2093.7490234375, -2464.8681640625, 30.625, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( -2625.720703125, 208.23828125, 4.8125, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( -1508.87109375, 2610.6982421875, 55.8359375, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( -316.1611328125, 829.765625, 14.2421875, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 776.7265625, 1871.443359375, 4.9068512916565, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 2539.541015625, 2084.0283203125, 10.8203125, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 2159.5302734375, 943.0634765625, 10.8203125, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 2333.0849609375, 61.4970703125, 26.70578956604, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 243.291015625, -178.376953125, 1.5821628570557, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 1368.998046875, -1279.7119140625, 13.546875, 6, 0.5, 0 ,0, 0, 0, 0, 400)
createBlip( 2400.4794921875, -1981.986328125, 13.546875, 6, 0.5, 0 ,0, 0, 0, 0, 400)

for k,v in ipairs (Mark) do
z = v[3] -1
Marker = createMarker ( v[1], v[2], z, "cylinder", 1.5,  255, 255, 0, 255 )
addEventHandler('onClientMarkerHit', Marker,
    function ( hitPlayer )
        if ( hitPlayer == localPlayer ) then
            guiSetVisible (GUIEditor.window[1], true )
            showCursor( true )
        end
    end
)
end

addEventHandler ("onClientGUIClick", getRootElement(), 
function(button, state, absoluteX, absoluteY)
if ( source == GUIEditor.button[1] ) then
guiSetVisible ( GUIEditor.window[1] , false)
showCursor ( false ) 
elseif ( source ==  GUIEditor.button[2] ) then 
triggerServerEvent("Silenced",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[3] ) then 
triggerServerEvent("Pistol",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[4] ) then 
triggerServerEvent("Deagle",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[5] ) then 
triggerServerEvent("Sawn-Off",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[6] ) then 
triggerServerEvent("Shotgun",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[7] ) then 
triggerServerEvent("Spaz",getLocalPlayer())
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[8] ) then 
triggerServerEvent("MP5",getLocalPlayer())
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[9] ) then 
triggerServerEvent("Tec",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[10] ) then 
triggerServerEvent("Uzi",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[11] ) then 
triggerServerEvent("M4",getLocalPlayer())
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[12] ) then 
triggerServerEvent("AK",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[13] ) then 
triggerServerEvent("Sniper",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[14] ) then 
triggerServerEvent("Rifle",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[15] ) then 
triggerServerEvent("Grenade",getLocalPlayer())
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true ) 
elseif ( source ==  GUIEditor.button[16] ) then 
triggerServerEvent("Teargas",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[17] ) then 
triggerServerEvent("Molotov",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[18] ) then 
triggerServerEvent("Satchel",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
elseif ( source ==  GUIEditor.button[19] ) then 
triggerServerEvent("Armor",getLocalPlayer()) 
guiSetEnabled ( source,false )
setTimer ( guiSetEnabled,10000,1,source,true )
end 
end)