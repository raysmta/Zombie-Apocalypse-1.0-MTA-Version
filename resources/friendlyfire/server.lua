local pTeam = createTeam("Players",255,255,0)
setTeamFriendlyFire(pTeam,true)
 
function sFF()
setPlayerTeam( source, pTeam )
end
addEventHandler("onPlayerJoin", getRootElement(), sFF)