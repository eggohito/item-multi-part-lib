#> item-multi-part-lib:private/impl/set_stacks
#
#   > Modify the item stacks from the `temp.impl.stacks` NBT path individually
#
#@within function *:private/impl/get_stacks


#   Get the count of the compounds inside the list
execute store result score #compound_count i-m-p-l.main if data storage item-multi-part-lib:global temp.impl.stacks[]

scoreboard players remove #compound_count i-m-p-l.main 1


#   Count the attached parts in the multi-part item stack
execute store result score #part_count i-m-p-l.main run data get storage item-multi-part-lib:global temp.impl.stacks[-1].tag.item-multi-part-lib.parts

execute store result storage item-multi-part-lib:global temp.impl.stacks[-1].tag.item-multi-part-lib.part_count int 1 run scoreboard players get #part_count i-m-p-l.main


#   Remove the `add_part` compound from the multi-part item stack, and append it back to `temp.container`
data remove storage item-multi-part-lib:global temp.impl.stacks[-1].tag.item-multi-part-lib.add_part

data modify storage item-multi-part-lib:global temp.container append from storage item-multi-part-lib:global temp.impl.stacks[-1]

data remove storage item-multi-part-lib:global temp.impl.stacks[-1]


#   Recall this function unless there are no more compounds in the `temp.impl.stacks` list
execute if score #compound_count i-m-p-l.main matches 1.. run function item-multi-part-lib:private/impl/set_stacks