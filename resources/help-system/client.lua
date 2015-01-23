local scr = {guiGetScreenSize() }
local w, h = 572, 421
local x, y = (scr[1]/2)-(w/2), (scr[2]/2)-(h/2)

helpMenu = guiCreateWindow(x, y, w, h, "Zombie Apocalypse 1.0", false)
guiWindowSetSizable(helpMenu, false)

iLogo = guiCreateStaticImage(175, 30, 220, 78, "zombieserver.png", false, helpMenu)
mTab = guiCreateTabPanel(12, 98, 550, 309, false, helpMenu)

sInfo = guiCreateTab("Information", mTab)

sInfoMemo = guiCreateMemo(4, 6, 540, 274, "Welcome to Zombie Apocalypse 1.0,\nOur server is currently under development so you might find a few Bugs & Errors.\nYou can find more information based on our server below,\n\n\nServer IP Address: mtasa://188.138.92.27:22085\nServer Owner(s): RaysMTA\nServer Forums: www.mta-za.com\nScript Version: 1.0\n\nBefore you start playing, we would like you to read our basic 'Rules', located on the other tab above. Please obey them at all times, and never let us down!", false, sInfo)
guiMemoSetReadOnly(sInfoMemo, true)

sRules = guiCreateTab("Rules", mTab)

sRulesMemo = guiCreateMemo(4, 6, 541, 275, "Our server rules are located below, please read them carefully:\n\n1. Always obey Administrator & Moderator commands.\n2. Never deatmatch someone if they don't want to be killed.\n3. Don't spam or flood in the chatbox.\n4. Don't use bad language in the chatbox.\n5. Respect all players & play fairly.\n6. Only English must be spoken in the main chat, any other language is to spoken in other chats. ( Soon )\n7. No hacks, mods or cheats allowed.\n8. No Ninja-Jacking others vehicles is allowed.\n9. No spawn killing is allowed.\n10. We do not tolerate any bad behaviour.", false, sRules)
guiMemoSetReadOnly(sRulesMemo, true)   

guiSetVisible(helpMenu,false) 
 

bindKey('f2','down',
function()
guiSetVisible(helpMenu, not guiGetVisible(helpMenu))
showCursor(not isCursorShowing())
end
)
