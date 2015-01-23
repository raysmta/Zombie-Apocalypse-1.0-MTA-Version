addEventHandler ( "onPlayerWasted", root,
    function ( )
        local account = getPlayerAccount ( source )
        if ( account and not isGuestAccount ( account ) ) then
            for slot = 1, 12 do
                setAccountData ( account, "save-wep".. slot, getPedWeapon ( source, slot ) )
                setAccountData ( account, "save-ammo".. slot, getPedTotalAmmo ( source, slot ) )
            end
        end
    end
)
 
addEventHandler ( "onPlayerSpawn", root,
    function ( )
        local account = getPlayerAccount ( source )
        if ( account and not isGuestAccount ( account ) ) then
            setElementData ( source, "Role", role )
            for slot = 1, 12 do
                local wep = getAccountData ( account, "save-wep".. slot )
                local ammo = getAccountData ( account, "save-ammo".. slot )
                giveWeapon ( source, wep, ammo )
            end
        end
    end
)