function dxsetText ( )
    local text = ""
    local UP = tonumber ( getElementData ( localPlayer, "level" ) ) or 0
    if ( UP == 1 ) then
        text = "  /60"
    elseif ( UP == 2 ) then -- el 2 significa el level 
        text = "  /110" -- el 110 es el texto que va a aparecer  osea la experiencia que le va a faltar eso editenlo a su gusto ponganlo de acuerdo a lo que pusieron en el level.xml del resource exp_system
    elseif ( UP == 3 ) then
        text = "  /160"
    elseif ( UP == 4 ) then
        text = "  /250"
    elseif ( UP == 5 ) then
        text = "  /500"
    elseif ( UP == 6 ) then
        text = "  /2000"
    elseif ( UP == 7 ) then
        text = "  /4000"
    elseif ( UP == 8 ) then
        text = "  /8000"
    elseif ( UP == 9 ) then
        text = "  /12000"
    elseif ( UP == 10 ) then
        text = "  /16000"
    elseif ( UP == 11 ) then
        text = "  /20000"
    elseif ( UP == 12 ) then
        text = "  /24000"
    elseif ( UP == 13 ) then
        text = "  /28000"
    elseif ( UP == 14 ) then
        text = "  /32000"
    elseif ( UP == 15 ) then
        text = "  /36000"
    elseif ( UP == 16 ) then
        text = "  /40000"
    elseif ( UP == 17 ) then
        text = "  /44000"
    elseif ( UP == 18 ) then
        text = "  /48000"
    elseif ( UP == 19 ) then
        text = "  /52000"
    elseif ( UP == 20 ) then
        text = "  /56000"
    elseif ( UP == 21 ) then
        text = " /66000"
    elseif ( UP == 22 ) then
        text = " /78000"
    elseif ( UP == 23 ) then
        text = "  /87000"
    elseif ( UP == 24 ) then
        text = "  /99000"
    elseif ( UP == 25 ) then
         text = "    /110000"
    elseif ( UP == 26 ) then
        text = "    /119000"
    elseif ( UP == 27 ) then
        text = "    /127000"
    elseif ( UP == 28 ) then
        text = "    /139000"
    elseif ( UP == 29 ) then
        text = "    /148000"
    elseif ( UP == 30 ) then
        text = "    /156000"
    elseif ( UP == 31 ) then
        text = "    /166000"
    elseif ( UP == 32 ) then
        text = "    /179000"
    elseif ( UP == 33 ) then
        text = "    /187000"
    elseif ( UP == 34 ) then
        text = "    /198000"
    elseif ( UP == 35 ) then
        text = "    /209000"
    end
    if isElement( theLabel ) then 
    	guiSetText( theLabel, text )
    else
	    theLabel = guiCreateLabel(752, 205, 48, 21,text,false)
	    guiSetFont ( theLabel, "clear-normal" )
	end
end
addEventHandler ( "onClientResourceStart", resourceRoot, dxsetText )
 
addEventHandler ( "onClientElementDataChange", localPlayer,
    function ( dataName )
        if ( dataName == "level" ) then
            dxsetText ( )
        end
    end
)