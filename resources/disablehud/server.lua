-- Hide some of the hud components when a player joins the server
addEventHandler ( "onResourceStart", root, 
    function ()
      setPlayerHudComponentVisible ( source, "ammo", false )    -- Hide the ammo displays for the newly joined player
      setPlayerHudComponentVisible ( source, "weapon", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "area_name", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "armour", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "breath", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "clock", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "health", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "money", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "radar", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "vehicle_name", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "radio", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "wanted", false )  -- Hide the weapon displays for the newly joined player
      setPlayerHudComponentVisible ( source, "crosshair", false )  -- Hide the weapon displays for the newly joined player


    end
)