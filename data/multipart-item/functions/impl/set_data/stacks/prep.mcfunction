#> multipart-item:impl/set_data/stacks/prep
#
#   > Get the item stacks from the `temp.container` NBT path, and modify them individually
#
#@within function *:impl/set_data/sections/**


#   Set the score of the `#stacksPrepped` score holder to 1
scoreboard players set #stacksPrepped m-i.main 1


#   Copy the contents of the `temp.container` compound list
data modify storage multipart-item:global temp.impl.stacks append from storage multipart-item:global temp.container[{tag: {multipart-item: {add_part: 1b}}}]

data remove storage multipart-item:global temp.container[{tag: {multipart-item: {add_part: 1b}}}]


#   Process the `temp.impl.stacks` compound list, and re-append the processed item stacks to the `temp.container` NBT path
function multipart-item:impl/set_data/stacks/loop