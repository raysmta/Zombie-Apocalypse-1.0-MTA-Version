local localPlayer = getLocalPlayer()
local playerName = getPlayerName(localPlayer)

--[[function createPasswordWindow()
	windowChangepw = guiCreateWindow(0.3859,0.349,0.2219,0.1628,"[P-Login] - Change password",true)
	guiSetSize(windowChangepw, 165, 21)
	guiSetAlpha(windowChangepw,0.80000001192093)
	editOldpw = guiCreateEdit(110,29,165,21,"",false,windowChangepw)
	guiSetAlpha(editOldpw,1)
	guiEditSetMasked(editOldpw,true)
	labelOldpw = guiCreateLabel(10,29,90,21,"Old password:",false,windowChangepw)
	guiSetAlpha(labelOldpw,1)
	guiLabelSetColor(labelOldpw,255,255,255)
	guiLabelSetVerticalAlign(labelOldpw,"center")
	guiLabelSetHorizontalAlign(labelOldpw,"left",false)
	editNewpw = guiCreateEdit(110,60,165,21,"",false,windowChangepw)
	guiSetAlpha(editNewpw,1)
	guiEditSetMasked(editNewpw,true)
	guiEditSetMaxLength(editNewpw,50)
	labelNewpw = guiCreateLabel(10,60,90,21,"New password:",false,windowChangepw)
	guiSetAlpha(labelNewpw,1)
	guiLabelSetColor(labelNewpw,255,255,255)
	guiLabelSetVerticalAlign(labelNewpw,"center")
	guiLabelSetHorizontalAlign(labelNewpw,"left",false)
	buttonChangepw = guiCreateButton(10,91,265,23,"Change password",false,windowChangepw)
	guiSetAlpha(buttonChangepw,1)
	
	guiSetVisible(windowChangepw, false)
	
	addEventHandler("onClientGUIClick", buttonChangepw, clientSubmitChangepw, false)
end]]--

function createLoginWindow()
    local sWidth,sHeight = guiGetScreenSize() 
		local scr = {guiGetScreenSize() }
		local w, h = 0.5000,0.7500
		local x, y = (scr[1]/2)-(w/2), (scr[2]/2)-(h/2)
	windowLogin = guiCreateWindow(0.3000,0.2000,0.5000,0.7500,"Zombie Apocalypse 1.0",true)
	iLogo = guiCreateStaticImage(66, 52, 309, 93, "zombieserver.png", false, windowLogin)
	labelUsername = guiCreateLabel(183, 155, 74, 23, "Username",false,windowLogin)
	guiSetFont(labelUsername, "clear-normal")
	labelPassword = guiCreateLabel(183, 210, 74, 23, "Password",false,windowLogin)
	guiSetFont(labelPassword, "clear-normal")
	labelInfo = guiCreateMemo(9, 323, 397, 118, "Latest Updates:\n\n- Added basic 'Login System' made from scratch.\n- Added basic 'Vehicle System' made from scratch.\n- Added custom mappings made from scratch.", false, windowLogin)
	editUsername = guiCreateEdit(126, 175, 175, 21,playerName,false,windowLogin)
	guiEditSetMaxLength(editUsername, 50)
	editPassword = guiCreateEdit(126, 229, 175, 21,"",false,windowLogin)
	guiEditSetMasked(editPassword, true)
	guiEditSetMaxLength(editPassword, 50)
	buttonLogin = guiCreateButton(9, 273, 82, 28, "Log In",false,windowLogin)
	buttonRegister = guiCreateButton(325, 273, 81, 28, "Register",false,windowLogin)
	
	uLine = guiCreateLabel(5, 301, 422, 29, "__________________________________________________________", false, windowLogin)

	
	guiSetVisible(windowLogin, false)
	
	addEventHandler("onClientGUIClick", buttonLogin, clientSubmitLogin, false)
	addEventHandler("onClientGUIClick", buttonRegister, clientSubmitRegister, false)
end

function resourceStart()
	createLoginWindow()
	if (windowLogin ~= nil) then
		guiSetVisible(windowLogin, true)
	else
		outputChatBox("An error has occurred! Contact an Administrator!", 255, 0, 0)
	end
	showCursor(true)
	guiSetInputEnabled(true)
end

function clientSubmitLogin(button, state)
	if button == "left" and state == "up" then
		local username = guiGetText(editUsername)
		local password = guiGetText(editPassword)
		if username and password then
			triggerServerEvent("submitLogin", getRootElement(), localPlayer, username, password)
		else
					outputChatBox("Please enter a 'Username' and 'Password' !", 255, 0, 0)
		end
	end
end

function changePw()
	createPasswordWindow()
	guiSetVisible(windowChangepw, true)
	showCursor(true)
	guiSetInputEnabled(true)
end

function clientSubmitRegister(button, state)
	if button == "left" and state == "up" then
		local username = guiGetText(editUsername)
		local password = guiGetText(editPassword)
		if username and password then
			triggerServerEvent("submitRegister", getRootElement(), localPlayer, username, password)
		else
	   outputChatBox("Please enter a 'Username' and 'Password' !", 255, 0, 0)
		end
	end
end

function hideLoginWindow()
	guiSetInputEnabled(false)
	guiSetVisible(windowLogin, false)
	showCursor(false)
end


function unknownError()
    outputChatBox("An unknown error occurred! Contact an Administrator!", 255, 0, 0)
end

function loginWrong()
    outputChatBox("You have entered a wrong username/password!", 255, 0, 0)
end

function registerTaken()
	outputChatBox("Sorry! This username has already been taken!", 255, 0, 0)
end


addEvent("hidePasswordWindow", true)
addEvent("hideLoginWindow", true)
addEvent("unknownError", true)
addEvent("loginWrong", true)
addEvent("registerTaken", true)
addEventHandler("hidePasswordWindow", getRootElement(), hidePasswordWindow)
addEventHandler("hideLoginWindow", getRootElement(), hideLoginWindow)
addEventHandler("unknownError", getRootElement(), unknownError)
addEventHandler("loginWrong", getRootElement(), loginWrong)
addEventHandler("registerTaken", getRootElement(), registerTaken)
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), resourceStart)