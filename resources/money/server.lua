 
addEventHandler("onResourceStart",getResourceRootElement(getThisResource()),
    function()
        call(getResourceFromName("scoreboard"),"addScoreboardColumn","Money") --Add it to scoreboard
    end
)
 
 
 