#> multipart-item:api/get_data
#
#   > Get the multi-part item's data
#
#@api


#   Do a clean up before processing new data
data remove storage multipart-item:io input

data remove storage multipart-item:global temp


#   Fetch the player's inventory data
scoreboard players set #apiGetFunc m-i.main 1

data modify storage multipart-item:io input set from entity @s Inventory