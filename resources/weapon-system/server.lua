function bPistol ( )
local money = getPlayerMoney(source)
if (money < 250) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Pistol for $250.", source, 255, 255, 0)
giveWeapon ( source, 22, 1 )
takePlayerMoney( source, 250 )
    end
  end
addEvent("bPistol", true)
addEventHandler("bPistol", root, bPistol)

function bSawn()
local money = getPlayerMoney(source)
if (money < 800) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Sawn-Off for $800.", source, 255, 255, 0)
giveWeapon(source, 26, 1)
takePlayerMoney(source, 800)
   end
end
addEvent("bSawn", true)
addEventHandler("bSawn", root, bSawn)

function bSpaz()
local money = getPlayerMoney(source)
if (money < 1025) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a SPAZ-12 for $1,025.", source, 255, 255, 0)
giveWeapon(source, 27, 1)
takePlayerMoney(source, 1025)
  end
end
addEvent("bSpaz", true)
addEventHandler("bSpaz", root, bSpaz)

function bMinigun()
local money = getPlayerMoney(source)
if (money < 50000) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Minigun for $50,000.", source, 255, 255, 0)
giveWeapon(source, 38, 1)
takePlayerMoney(source, 50000)
  end
end
addEvent("bMinigun", true)
addEventHandler("bMinigun", root, bMinigun)

function bSniper()
local money = getPlayerMoney(source)
if (money < 2105) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Sniper for $2,105.", source, 255, 255, 0)
giveWeapon(source, 34, 1)
takePlayerMoney(source, 2105)
  end
end
addEvent("bSniper", true)
addEventHandler("bSniper", root, bSniper)

function bUzi()
local money = getPlayerMoney(source)
if (money < 1250) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Uzi for $1,250.", source, 255, 255, 0)
giveWeapon(source, 28, 1)
takePlayerMoney(source, 1250)
  end
end
addEvent("bUzi", true)
addEventHandler("bUzi", root, bUzi)

function bRocket()
local money = getPlayerMoney(source)
if (money < 25000) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Rocket for $25,000.", source, 255, 255, 0)
giveWeapon(source, 35, 1)
takePlayerMoney(source, 25000)
  end
end
addEvent("bRocket", true)
addEventHandler("bRocket", root, bRocket)

function bMp5()
local money = getPlayerMoney(source)
if (money < 1500) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a MP5 for $1,500.", source, 255, 255, 0)
giveWeapon(source, 29, 1)
takePlayerMoney(source, 1500)
   end
end
addEvent("bMp5", true)
addEventHandler("bMp5", root, bMp5)

function aPistol()
local money = getPlayerMoney(source)
if (money < 250) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased Pistol Ammo for $250.", source, 255, 255, 0)
giveWeapon(source, 22, 500 )
takePlayerMoney(source, 250)
  end
end
addEvent("aPistol", true)
addEventHandler("aPistol", root, aPistol)

function aSawn()
local money = getPlayerMoney(source)
if (money < 650) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased Sawn-Off Ammo for $650.", source, 255, 255, 0)
giveWeapon(source, 26, 500 )
takePlayerMoney(source, 650)
    end
end
addEvent("aSawn", true)
addEventHandler("aSawn", root, aSawn)

function aSpaz()
local money = getPlayerMoney(source)
if (money < 1850) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased SPAZ-12 Ammo for $1,850.", source, 255, 255, 0)
giveWeapon(source, 27, 500 )
takePlayerMoney(source, 1850)
  end
end
addEvent("aSpaz", true)
addEventHandler("aSpaz", root, aSpaz)

function aMinigun()
local money = getPlayerMoney(source)
if (money < 10450) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased Minigun Ammo for $10,450.", source, 255, 255, 0)
giveWeapon(source, 38, 500 )
takePlayerMoney(source, 10450)
  end
end
addEvent("aMinigun", true) 
addEventHandler("aMinigun", root, aMinigun)

function aSniper()
local money = getPlayerMoney(source)
if (money < 3010) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased Sniper Ammo for $3,010.", source, 255, 255, 0)
giveWeapon(source, 34, 500 )
takePlayerMoney(source, 3010)
  end
end
addEvent("aSniper", true)
addEventHandler("aSniper", root, aSniper)

function aUzi()
local money = getPlayerMoney(source)
if (money < 2199) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased Uzi Ammo for $2,199.", source, 255, 255, 0)
giveWeapon(source, 28, 500 )
takePlayerMoney(source, 2199)
  end
end
addEvent("aUzi", true)
addEventHandler("aUzi", root, aUzi)

function aRocket()
local money = getPlayerMoney(source)
if (money < 15450) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased Rocket Ammo for $15,450.", source, 255, 255, 0)
giveWeapon(source, 35, 500 )
takePlayerMoney(source, 15450)
  end
end
addEvent("aRocket", true)
addEventHandler("aRocket", root, aRocket)

function aMf()
local money = getPlayerMoney(source)
if (money < 1041) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased M4 Ammo for $1,041.", source, 255, 255, 0)
giveWeapon(source, 31, 500 )
takePlayerMoney(source, 1041)
  end
end
addEvent("aMf", true)
addEventHandler("aMf", root, aMf)

function aAk()
local money = getPlayerMoney(source)
if (money < 1001) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased AK-47 Ammo for $1,001.", source, 255, 255, 0)
giveWeapon(source, 30, 500 )
takePlayerMoney(source, 1001)
  end
end
addEvent("aAk", true)
addEventHandler("aAk", root, aAk)

function spArmour()
local money = getPlayerMoney(source)
if (money < 500) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Armour for $500.", source, 255, 255, 0)
setPedArmor( source, 100 )
takePlayerMoney(source, 500)
  end
end
addEvent("spArmour", true)
addEventHandler("spArmour", root, spArmour) 

function spPara()
local money = getPlayerMoney(source)
if (money < 80) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Parachute for $80.", source, 255, 255, 0)
giveWeapon(source, 46)
takePlayerMoney(source, 80)
  end
end
addEvent("spPara", true)
addEventHandler("spPara", root, spPara)

function spCamera()
local money = getPlayerMoney(source)
if (money < 80) then 
outputChatBox("You need more money!", source, 255,0,0)
else
outputChatBox("You purchased a Parachute for $80.", source, 255, 255, 0)
giveWeapon(source, 43)
takePlayerMoney(source, 45)
  end
end
addEvent("spCamera", true)
addEventHandler("spCamera", root, spPara)