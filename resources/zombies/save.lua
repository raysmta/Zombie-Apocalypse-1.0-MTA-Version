function onPlayerQuit ( )
      local playeraccount = getPlayerAccount ( source )
      if ( playeraccount ) then
            kills = getElementData(source,"Kills")
            setAccountData ( playeraccount, "play.kill", kills )
      end
end
 
function onPlayerLogin ( )
      local playeraccount = getPlayerAccount ( source )
      if ( playeraccount ) then
            local kills = getAccountData ( playeraccount, "play.kill" )
            if ( kills ) then
            setElementData ( source, "Kills", kills )
            end
      end
end
 
addEventHandler ( "onPlayerQuit", getRootElement ( ), onPlayerQuit )
addEventHandler ( "onPlayerLogin", getRootElement ( ), onPlayerLogin )