
        mainTab = guiCreateWindow(17, 208, 200, 200, "Apocalypse 1.0", false)
        guiWindowSetSizable(mainTab, false)

        sChar = guiCreateButton(27, 32, 150, 27, "Characters", false, mainTab)
        sPlayer = guiCreateButton(27, 96, 150, 27, "Locate A Player", false, mainTab)
        sVeh = guiCreateButton(27, 157, 150, 27, "Vehicles", false, mainTab)
        sL = guiCreateLabel(0, 129, 212, 28, "____________________________________________________", false, mainTab)
        sLi = guiCreateLabel(0, 63, 212, 28, "____________________________________________________", false, mainTab)


        vehTab = guiCreateWindow(271, 174, 325, 272, "", false)
        guiWindowSetSizable(vehTab, false)

        mainGrid = guiCreateGridList(10, 23, 305, 239, false, vehTab)
        guiGridListAddColumn(mainGrid, "Vehicles", 0.9)
        for i = 1, 9 do
            guiGridListAddRow(mainGrid)
        end
        guiGridListSetItemText(mainGrid, 0, 1, "Infernus", false, false)
        guiGridListSetItemText(mainGrid, 1, 1, "Turismo", false, false)
        guiGridListSetItemText(mainGrid, 2, 1, "Jester", false, false)
        guiGridListSetItemText(mainGrid, 3, 1, "Bobcat", false, false)
        guiGridListSetItemText(mainGrid, 4, 1, "Flash", false, false)
        guiGridListSetItemText(mainGrid, 5, 1, "NRG-500", false, false)
        guiGridListSetItemText(mainGrid, 6, 1, "PCJ-600", false, false)
        guiGridListSetItemText(mainGrid, 7, 1, "Mountain Bike", false, false)
        guiGridListSetItemText(mainGrid, 8, 1, "BMX", false, false)    
		btnClose = guiCreateButton(248, 210, 52, 24, "Close", false, mainGrid)    
 

		guiSetVisible(mainTab, false)
                guiSetVisible(vehTab, false)
		showCursor(false)
		
		function sVehicle()
		if source == GUIEditor.button[3] then
		guiSetVisible(vehTab, true)
		showCursor(true)
		else 
		if source == btnClose then
		guiSetVisible(vehTab, false)
		showCursor(false)
		end
		end
		end
		addEventHandler("onClientGUIClick", getRootElement(), sVehicle)