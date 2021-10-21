#> multipart-item:api/set_data
#
#   > Set the multi-part item's data
#
#@api


#   Fetch the player's inventory data
function multipart-item:private/setup/whole_inventory


#   Modify the multi-part item from the player's inventory
function #multipart-item:impl/get_sections


#   Clean up `temp.container` NBT path from `item-multi-part-lib:global` storage and `input` NBT path from `item-multi-part-lib:io` storage
scoreboard players set #apiGetFunc m-i.main 0