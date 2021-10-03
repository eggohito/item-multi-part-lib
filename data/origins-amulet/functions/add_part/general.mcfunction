#> origins-amulet:add_part/general
#
#   >   Run general stuff for adding any part
#
#@within *:*/**


#   Play a sound event
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.4 2


#   Get the multi-part item stack
function item-multi-part-lib:api/get_data


#   Make changes to the item stack
execute store result score #completed_amulets i-m-p-l.main if data storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {part_count: 4}, origins-amulet: 1b}}]


execute if score #completed_amulets i-m-p-l.main matches 1.. run data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {part_count: 4}, origins-amulet: 1b}}] merge value {id: "minecraft:structure_block", tag: {display: {Name: '{"text": "Completed Amulet", "italic": false, "color": "gold"}'}, Enchantments: [{}]}}

execute if score #completed_amulets i-m-p-l.main matches 1.. run data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {part_count: 4}, origins-amulet: 1b}}].tag.item-multi-part-lib merge value {add_part: {new: 1b, id: 'origins-amulet:finalizer'}}

execute if score #completed_amulets i-m-p-l.main matches 1.. run data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {part_count: 4}, origins-amulet: 1b}}].tag.origins-amulet set value {final: 1b}


execute if score #completed_amulets i-m-p-l.main matches 1.. run function item-multi-part-lib:api/set_data