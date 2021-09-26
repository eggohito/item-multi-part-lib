#> item-multi-part-lib:private/finalize
#
#   > Set the "base" item's data, and remove the `add_part` NBT compound
#
#@within function *:api/add_part


#   Prepend a translated string to the multi-part item only if the `root.msg.prepend` NBT path in the `item-multi-part-lib:global` storage exists
execute store result score #part_count m-p-l.main if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}].tag.item-multi-part-lib.parts[]

execute if data storage item-multi-part-lib:global root.msg.prepend unless score #part_count m-p-l.main matches 2.. run data modify block -30000000 0 1603 Text1 set value '{"storage": "item-multi-part-lib:global", "nbt": "root.msg.prepend", "interpret": true}'

execute if data storage item-multi-part-lib:global root.msg.prepend unless score #part_count m-p-l.main matches 2.. run data modify storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}].tag.display.Lore prepend from block -30000000 0 1603 Text1


#   Count how many strings are inside the `parts` NBT array of the amulet
execute store result storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}].tag.item-multi-part-lib.part_count int 1 run scoreboard players get #part_count m-p-l.main


#   Remove the `add_part` NBT compound of the amulet
data remove storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}].tag.item-multi-part-lib.add_part


#   Clean the MinecraftPhi sign
data remove block -30000000 0 1603 Text1