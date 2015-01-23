If you want to change the vehicle's that can be spawned, 
go into client.lua with a good text editor ( notepad++ )
Press ctrl+F and search for the vehicle that needs to be removed.
( notice some vehicle's use shorter name's i.e Police ranger = policeranger or polranger.
If you found the line, delete the line that begins with:

guiGridListSetItemText ( list_vehicles1/2, shortNAMEVehicle, vehicle_column, "Full name of vehicle here", false, false )

Make sure to delete both line's: 

guiGridListSetItemText ( list_vehicles1
guiGridListSetItemText ( list_vehicles2

If you have a question, request or something else. feel free to email me at fabioserverGNR[at]gmail.com


