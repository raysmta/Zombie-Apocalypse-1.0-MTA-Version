function loginHandler(player, username, password)
	local account = getAccount(username, password)
	if (account ~= false) then
		if (logIn(player, account, password) == true) then
			outputChatBox("Welcome to 'Zombie Apocalypse 1.0', Enjoy the BETA!", player, 0, 255, 0)
			outputChatBox("Author(s): RaysMTA", player, 0, 255, 0)
			outputChatBox("Welcome back, "..getPlayerName(player).." to Zombie Apocalypse!", player, 0, 179, 255)
			triggerClientEvent (player, "hideLoginWindow", getRootElement())
		else
			triggerClientEvent (player, "unknownError", getRootElement())
		end
	else
		triggerClientEvent (player, "loginWrong", getRootElement())
	end
end

function clientSubmitChangepw(button, state)
	if button == "left" and state == "up" then
		local oldpassword = guiGetText(editOldpw)
		local newpassword = guiGetText(editNewpw)
		if oldpassword and newpassword then
			triggerServerEvent("submitChangepw", getRootElement(), localPlayer, oldpassword, newpassword)
		else
			outputChatBox("Enter old and new password.")
		end
	end
end

function registerHandler(player, username, password)
    local account = getAccount(username, password)
    if (account ~= false) then
        triggerClientEvent(player, "registerTaken", getRootElement())
    else
        account = addAccount(username, password)
        if (logIn(player, account, password) == true) then
            fadeCamera(source, false)
            outputChatBox("Welcome to 'Zombie Apocalypse 1.0', Enjoy the BETA!", player, 0, 255, 0)
            outputChatBox("Author(s): RaysMTA", player, 0, 255, 0)
            triggerClientEvent(player, "hideLoginWindow", getRootElement())
            spawnPlayer(player, 1536.39453, -1682.84375, 13.54688, 0, 29)
            giveWeapon(player, 22, 500)
            giveWeapon(player, 31, 500)
            giveWeapon(player, 30, 1000)
			setPedArmor ( player, 100 ) 
            setCameraTarget (player, player)
            setTimer(fadeCamera, 2000, 1, player, true)
        else
            triggerClientEvent(player, "unknownError", getRootElement())
        end
    end
end

function onStart()
setGameType ( "Apocalypse 1.0" )
end
addEventHandler("onResourceStart", getRootElement(), onStart)

addEvent("submitLogin", true)
addEvent("submitRegister", true)
addEventHandler("submitLogin", root, loginHandler)
addEventHandler("submitRegister", root, registerHandler)