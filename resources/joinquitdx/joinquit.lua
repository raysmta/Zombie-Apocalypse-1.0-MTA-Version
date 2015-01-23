function dxDrawColorText(str, ax, ay, bx, by, color, scale, font, left, top, clip, wordbreak, postGUI)
    local pat = "(.-)#(%x%x%x%x%x%x)"
    local s, e, cap, col = str:find(pat, 1)
    local last = 1
    while s do
        if cap == "" and col then color = tocolor( tonumber( "0x"..col:sub( 1, 2 ) ), tonumber( "0x"..col:sub( 3, 4 ) ),
        tonumber( "0x"..col:sub( 5, 6 ) ), 255 ) end
        if s ~= 1 or cap ~= "" then
            local w = dxGetTextWidth(cap, scale, font)
            dxDrawText( cap, ax, ay, ax + w, by, color, scale, font )
            ax = ax + w
            color = tocolor( tonumber( "0x"..col:sub( 1, 2 ) ), tonumber( "0x"..col:sub( 3, 4 ) ), tonumber( "0x"..col:sub( 5, 6 ) ), 255 )
        end
        last = e + 1
        s, e, cap, col = str:find( pat, last )
    end
    if last <= #str then
        cap = str:sub( last )
        local w = dxGetTextWidth( cap, scale, font )
        dxDrawText( cap, ax, ay, ax + w, by, color, scale, font, left, top, clip, wordbreak, postGUI )
    end
end
 
local messageJoin = ""
local messageQuit = ""
 
function renderPlayerJoined ( )
    dxDrawColorText("* ".. messageJoin,504.0,4.0,574.0,20.0,tocolor(200,0,0,255),0.8,"sans","left","top",false,false,false)
end
 
function renderPlayerLeft ( )
    dxDrawColorText("* ".. messageQuit,503.0,16.0,573.0,32.0,tocolor(0,0,255,170),0.8,"sans","left","top",false,false,false)
end
 
addEventHandler('onClientPlayerJoin', root,
    function()
        messageJoin = getPlayerName(source) .. " #ffffffhas Join to the server."
        addEventHandler ( "onClientRender", root, renderPlayerJoined )
        setTimer (
            function ( )
                removeEventHandler ( "onClientRender", root, renderPlayerJoined )
            end
            ,6000,1
        )
    end
)
 
addEventHandler('onClientPlayerChangeNick', root,
    function()
        outputChatBox('type /reconnect', localPlayer, 255, 100, 100)
		cancelEvent()
    end
)
 
addEventHandler('onClientPlayerQuit', root,
    function(reason)
        messageQuit  = getPlayerName(source) .. " #ffffffhas left of the server [" .. reason .. "]"
        addEventHandler ( "onClientRender", root, renderPlayerLeft )
        setTimer (
            function ( )
                removeEventHandler ( "onClientRender", root, renderPlayerLeft )
            end
            ,6000,1
        )
    end
)