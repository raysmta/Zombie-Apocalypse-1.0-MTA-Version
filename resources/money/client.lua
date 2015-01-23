 
local starttick, currenttick
local player = getLocalPlayer()
addEventHandler("onClientRender",getRootElement(),
    function()
        if not starttick then
            starttick = getTickCount()
        end
        currenttick = getTickCount()
        if currenttick - starttick >= 1000 then
            setElementData(player,"Money",getPlayerMoney( player ) )  ---- set Player Money in the Data
            starttick =  getTickCount()
        end
    end
)
function updateMoney()
    for k, v in ipairs(getElementsByType('player')) do
        local money = getPlayerMoney(v)  --- get the money for all player
        setElementData(v,"Money",money )  --- then put in data
    end
end
setTimer(updateMoney, 100, 0)
 
 
 
 
 