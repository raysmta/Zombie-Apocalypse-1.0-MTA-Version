function skins ()
skinsz = engineLoadTXD("wmyst.txd")
engineImportTXD(skinsz, 29 )
skinsz2 = engineLoadDFF("wmyst.dff")
engineImportDFF(skinsz2, 29)
end
addEventHandler( "onClientResourceStart", resourceRoot, skins )