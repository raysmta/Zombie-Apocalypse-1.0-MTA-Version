function bPistol()
giveWeapon ( source, 35, 200 )
takePlayerMoney(source, 250)
end
addEvent("bPistol", true)
addEventHandler("bPistol", resourceRoot, bPistol)

function bSawn(thePlayer)
giveWeapon(thePlayer, 26, 0)
takePlayerMoney(thePlayer, 800)
end
addEvent("bSawn", true)
addEventHandler("bSawn", resourceRoot, bSawn)

function bSpaz(thePlayer)
giveWeapon(thePlayer, 27, 0)
takePlayerMoney(thePlayer, 1025)
end
addEvent("bSpaz", true)
addEventHandler("bSpaz", resourceRoot, bSpaz)

function bMinigun(thePlayer)
giveWeapon(thePlayer, 38, 0)
takePlayerMoney(thePlayer, 50000)
end
addEvent("bMinigun", true)
addEventHandler("bMinigun", resourceRoot, bMinigun)

function bSniper(thePlayer)
giveWeapon(thePlayer, 34, 0)
takePlayerMoney(thePlayer, 2105)
end
addEvent("bSniper", true)
addEventHandler("bSniper", resourceRoot, bSniper)

function bUzi(thePlayer)
giveWeapon(thePlayer, 28, 0)
takePlayerMoney(thePlayer, 1250)
end
addEvent("bUzi", true)
addEventHandler("bUzi", resourceRoot, bUzi)

function bRocket(thePlayer)
giveWeapon(thePlayer, 35, 0)
takePlayerMoney(thePlayer, 25000)
end
addEvent("bRocket", true)
addEventHandler("bRocket", resourceRoot, bRocket)

function bMp5(thePlayer)
giveWeapon(thePlayer, 29, 0)
takePlayerMoney(thePlayer, 1500)
end
addEvent("bMp5", true)
addEventHandler("bMp5", resourceRoot, bMp5)

