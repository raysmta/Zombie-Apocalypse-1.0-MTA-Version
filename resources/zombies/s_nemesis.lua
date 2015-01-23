
function Spawnbot1 (source)
local x,y,z = getElementPosition (source) -- Posisi koordinat XYZ, yang ini menandakan "dapatkan lokasi yang menulis commandnya"
local rot= 90 -- Rotasi botnya pada saat spawnnya
local skin=39 -- ID skin orang yang diambil untuk bot
local interior=0 -- Lokasi interior bot, 0 berarti di luar
local dimension= 0 -- Lokasi dimensi bot
local weapon=31 -- ID Senjata yang akan dipakai bot
local team = Army
local mode= "guarding" -- Mode yang bot mau lakukan, informasi lebih lengkap ada di MTA SA wiki
local modesubject=source -- Target yang akan ditembak oleh bot
call (getResourceFromName("slothboth"), "spawnBot", x+2, y, z+1, rot, skin, interior, dimension, team, weapon, mode, modesubject) -- Call dari resource lain (slothbot) untuk mengikuti semua variabel dari atas.
end
 
addCommandHandler("spawnbot", Spawnbot1) -- Command yang bisa digunakan untuk spawn botnya.