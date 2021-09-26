#> item-multi-part-lib:api/get_data
#
#   > Get the multi-part item's data
#
#@api


#   Do a clean up before processing new data
data remove storage item-multi-part-lib:io input

data remove storage item-multi-part-lib:global temp


#   Fetch the player's inventory data
scoreboard players set #apiGetFunc i-m-p-l.main 1

data modify storage item-multi-part-lib:io input set from entity @s Inventory