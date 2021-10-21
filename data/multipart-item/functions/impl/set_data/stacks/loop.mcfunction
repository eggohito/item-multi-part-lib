#> multipart-item:impl/set_data/stacks/loop
#
#   > Modify the item stacks from the `temp.impl.stacks` NBT path individually
#
#@within
#   function *:impl/set_data/stacks/prep
#   function *:impl/set_data/stacks/loop


#   Get the count of the compounds inside the list
execute store result score #compound_count m-i.main if data storage multipart-item:global temp.impl.stacks[]

scoreboard players remove #compound_count m-i.main 1


#   Count the attached parts in the multi-part item stack
execute store result score #part_count m-i.main run data get storage multipart-item:global temp.impl.stacks[-1].tag.multipart-item.parts

execute store result storage multipart-item:global temp.impl.stacks[-1].tag.multipart-item.part_count int 1 run scoreboard players get #part_count m-i.main


#   Remove the `add_part` compound from the multi-part item stack, and append it back to `temp.container`
data remove storage multipart-item:global temp.impl.stacks[-1].tag.multipart-item.add_part

data modify storage multipart-item:global temp.container append from storage multipart-item:global temp.impl.stacks[-1]

data remove storage multipart-item:global temp.impl.stacks[-1]


#   Recall this function unless there are no more compounds in the `temp.impl.stacks` list
tellraw @a[tag = multipart-item.debugger] {"storage": "multipart-item:global", "nbt": "temp.container[-1]"}

execute if score #compound_count m-i.main matches 1.. run function multipart-item:impl/set_data/stacks/loop