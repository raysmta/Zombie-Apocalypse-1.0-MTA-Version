--**********************************************************--
-- Weapons Shop By =x=|DoN|=x= ( Don't remove this please )
-- Skype : DON.81
-- Email : S.x.z@hotmail.com
-- Enjoy and have fun ;3
-- File : Server.lua
--**********************************************************--
addEvent("Silenced", true)
addEventHandler("Silenced",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 1800) then
    takePlayerMoney(source,1800)
    giveWeapon ( source ,  23,30 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Silenced ", source, 255, 0, 0, true )
end
end)
addEvent("Pistol", true)
addEventHandler("Pistol",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 2000) then
    takePlayerMoney(source,2000)
    giveWeapon ( source ,  22,30 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Pistol ", source, 255, 0, 0, true )
end
end)
addEvent("Deagle", true)
addEventHandler("Deagle",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 2500) then
    takePlayerMoney(source,2500)
    giveWeapon ( source ,  24,20 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Deagle ", source, 255, 0, 0, true )
end
end)
addEvent("Sawn-Off", true)
addEventHandler("Sawn-Off",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 3500) then
    takePlayerMoney(source,3500)
    giveWeapon ( source ,  26,15 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Sawn-Off ", source, 255, 0, 0, true )
end
end)
addEvent("Shotgun", true)
addEventHandler("Shotgun",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 3600) then
    takePlayerMoney(source,3600)
    giveWeapon ( source ,  25,15 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Shotgun ", source, 255, 0, 0, true )
end
end)
addEvent("Spaz", true)
addEventHandler("Spaz",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 4000) then
    takePlayerMoney(source,4000)
    giveWeapon ( source ,  27,25 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought SPAZ-12 ", source, 255, 0, 0, true )
end
end)
addEvent("MP5", true)
addEventHandler("MP5",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 3600) then
    takePlayerMoney(source,3600)
    giveWeapon ( source ,  29,40 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought MP5 ", source, 255, 0, 0, true )
end
end)
addEvent("Tec", true)
addEventHandler("Tec",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 2500) then
    takePlayerMoney(source,2500)
    giveWeapon ( source ,  32,40 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Tec-9 ", source, 255, 0, 0, true )
end
end)
addEvent("Uzi", true)
addEventHandler("Uzi",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 2800) then
    takePlayerMoney(source,2800)
    giveWeapon ( source ,  28,40 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Uzi ", source, 255, 0, 0, true )
end
end)
addEvent("M4", true)
addEventHandler("M4",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 5100) then
    takePlayerMoney(source,5100)
    giveWeapon ( source ,  31,80 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought M4 ", source, 255, 0, 0, true )
end
end)
addEvent("AK", true)
addEventHandler("AK",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 5000) then
    takePlayerMoney(source,5000)
    giveWeapon ( source ,  30,80 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought AK-47 ", source, 255, 0, 0, true )
end
end)
addEvent("Sniper", true)
addEventHandler("Sniper",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 6000) then
    takePlayerMoney(source,6000)
    giveWeapon ( source ,  34,20 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Sniper ", source, 255, 0, 0, true )
end
end)
addEvent("Rifle", true)
addEventHandler("Rifle",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 5800) then
    takePlayerMoney(source,5800)
    giveWeapon ( source ,  33,20 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Rifle ", source, 255, 0, 0, true )
end
end)
addEvent("Grenade", true)
addEventHandler("Grenade",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 20000) then
    takePlayerMoney(source,20000)
    giveWeapon ( source ,  16,1 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Grenade ", source, 255, 0, 0, true )
end
end)
addEvent("Teargas", true)
addEventHandler("Teargas",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 20000) then
    takePlayerMoney(source,20000)
    giveWeapon ( source ,  17,1 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Teargas ", source, 255, 0, 0, true )
end
end)
addEvent("Molotov", true)
addEventHandler("Molotov",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 20000) then
    takePlayerMoney(source,20000)
    giveWeapon ( source ,  18,1 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Molotov ", source, 255, 0, 0, true )
end
end)
addEvent("Satchel", true)
addEventHandler("Satchel",root,
function()
local PlayerMoney = getPlayerMoney(source)
 if ( PlayerMoney >= 20000) then
    takePlayerMoney(source,20000)
    giveWeapon ( source ,  39,1 )
    outputChatBox ( "#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Satchel ", source, 255, 0, 0, true )
end
end)
addEvent("Armor",true) 
addEventHandler("Armor",root, 
function()
    if ( getPlayerMoney (source) >= 1500 ) then
    takePlayerMoney(source, 1500)
    setPedArmor ( source, 100 )
    outputChatBox("#00FF00* [ "..getPlayerName(source) .." #00FF00] Has Bought Armor", source, 255, 255, 0, true)
end
end)
