setTimer ( function () 
	playSoundFrontEnd(getRootElement(),40)
	local chat = math.random(1,10)
	if chat == 1 then
	outputChatBox("#ff0000[INFO] #00aaffVisit our website www.mta-za.com!",root, 255, 255, 255, true)
	end
	if chat == 2 then
	outputChatBox("#ff0000[INFO] #00aaffOur server is currently in BETA v1.0!",root, 255, 255, 255, true)
	end
	if chat == 3 then
	outputChatBox("#ff0000[INFO] #00aaffYou can find more information about our server on F2!",root, 255, 255, 255, true)
	end
	if chat == 4 then
	outputChatBox("#ff0000[INFO] #00aaffWant to suggest something or help us with our server? Visit our website www.mta-za.com!",root, 255, 255, 255, true)
	end
	if chat == 5 then
	outputChatBox("#ff0000[INFO] #00aaffPrepare for the horror of Zombie Apocalypse!",root, 255, 255, 255, true)
	end
	if chat == 6 then
	outputChatBox("#ff0000[INFO] #00aaffKill zombies and level up each time, buy yourself stronger weapons from F3!",root, 255, 255, 255, true)
	end
	if chat == 7 then
	outputChatBox("#ff0000[INFO] #00aaffDon't get infected or killed, live your way through this apocalypse!",root, 255, 255, 255, true)
	end
	if chat == 8 then
	outputChatBox("#ff0000[INFO] #00aaffKill the most zombies, and go on our 'Top Zombie Killer' and get a prize!",root, 255, 255, 255, true)
	end
	if chat == 9 then
	outputChatBox("#ff0000[INFO] #00aaffHelp us stay alive by donating to us, visit www.mta-za.com!",root, 255, 255, 255, true)
	end
	if chat == 10 then
	outputChatBox("#ff0000[INFO] #00aaffWe update our server everyday with new scripts and minor fixes!",root, 255, 255, 255, true)
	end
end, 90000, 0 )