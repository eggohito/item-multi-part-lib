#> multipart-item:impl/set_data/sections/armor
#
#   > Load the armor section of the player's inventory, and modify the item stacks that has the `{mutlipart-item: {add_part: 1b}}` NBT from the section
#
#@within tag/function *:impl/get_sections


#   Load the armor section
function phi.modifyinv:load/armor


#   Modify the items that has the `{multipart-item: {add_part: 1b}}` NBT
data modify storage multipart-item:global temp.container set from block -30000000 0 1602 Items

execute if data storage multipart-item:global temp.container[{tag: {multipart-item: {add_part: 1b}}}] run function multipart-item:impl/set_data/stacks/prep


#   Apply the changes made to the player's armor inventory section
data modify block -30000000 0 1602 Items set from storage multipart-item:global temp.container

execute if score #stacksPrepped m-i.main matches 1 run function phi.modifyinv:apply/armor


#   Clean up
scoreboard players set #stacksPrepped m-i.main 0

data remove storage multipart-item:global temp.container