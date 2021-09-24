#> multi-part-lib:private/finalize
#
#   > Set the amulet's `parts` data, and remove the `add_part` NBT compound
#
#@within function *:api/add_part


#   Prepend a string in the amulet's `Lore` NBT string array ONLY IF the amulet has at least 1 part (or none at all)
execute store result score #part_count m-p-l.main if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag.multi-part-lib.parts[]

execute if data storage multi-part-lib:global root.default.prepended_msg unless score #part_count m-p-l.main matches 2.. run data modify storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag.display.Lore prepend from storage multi-part-lib:global root.default.prepended_msg


#   Count how many strings are inside the `parts` NBT array of the amulet
execute store result storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag.multi-part-lib.part_count int 1 run scoreboard players get #part_count m-p-l.main


#   Remove the `add_part` NBT compound of the amulet
data remove storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag.multi-part-lib.add_part