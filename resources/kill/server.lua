function commitSuicide(sourcePlayer)
	-- kill the player and make him responsible for it
	killPed(sourcePlayer, sourcePlayer)
	outputChatBox("You have killed yourself! You will now respawn!", source, 255,0,0)
end
-- attach our handler to the "kill" command
addCommandHandler("kill", commitSuicide)

