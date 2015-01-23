
myFontTwo = dxCreateFont( "pricedown.ttf", 20 )

addEventHandler ( "onClientResourceStart", resourceRoot,
    function (r )
    	if r == getThisResource(  ) then
        myFont = guiCreateFont( "pricedown.ttf", 20 )
        GUIEditor_Label = { }
   

      GUIEditor_Label[1] = guiCreateLabel(644, 187, 41, 18,"Level:",false)
         
guiSetFont(GUIEditor_Label[1],"clear-normal")


         GUIEditor_Label[3] = guiCreateLabel(644, 205, 83, 21,"Experience:",false)

         guiSetFont(GUIEditor_Label[3],"clear-normal")
 
        GUIEditor_Label[2] = guiCreateLabel(687, 187, 36, 19, tostring ( getElementData ( localPlayer, "level" ) ),false)
        guiSetFont ( GUIEditor_Label[2], "clear-normal" )
        GUIEditor_Label[4] = guiCreateLabel(723, 205, 42, 20, tostring ( getElementData ( localPlayer, "exp" ) ),false)
        guiSetFont ( GUIEditor_Label[4], "clear-normal")
    end
    end
)
 
addEventHandler ( "onClientElementDataChange", localPlayer,
    function ( dataName )
        if ( dataName == "level" ) then
            guiSetText ( GUIEditor_Label[2], tostring ( getElementData ( localPlayer, "level" ) ) )
        elseif ( dataName == "exp" ) then
            guiSetText ( GUIEditor_Label[4], tostring ( getElementData ( localPlayer, "exp" ) ) )
        end
    end
)


-- Direct X Drawing
addEventHandler("onClientRender",root,
    function()
        --dxDrawText("www.racconcityzr.nixiweb.com",623.0,211.0,799.0,226.0,tocolor(255,255,255,255),1.0,"default","left","top",false,false,false)
        dxDrawRectangle(623.0,211.0,175.0,16.0,tocolor(0,0,0,0),false)
    end
)
gMe = getLocalPlayer()
