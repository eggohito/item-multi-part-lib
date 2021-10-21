#> origins-amulet:add_part/general
#
#   >   Run general stuff for adding any part
#
#@within *:*/**


#   Play a sound event
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.4 2


#   Get the multi-part item stack
function multipart-item:api/get_data


#   Make changes to the item stack
execute store result score #completed_amulets origins-amulet if data storage multipart-item:io input[{tag: {multipart-item: {part_count: 4}, origins-amulet: {complete: 0b}}}]


execute if score #completed_amulets origins-amulet matches 1.. run data modify storage multipart-item:io input[{tag: {multipart-item: {part_count: 4}, origins-amulet: {complete: 0b}}}] merge value {id: "minecraft:structure_block", tag: {display: {Name: '{"text": "Completed Amulet", "italic": false, "color": "gold"}'}, Enchantments: [{}]}}

execute if score #completed_amulets origins-amulet matches 1.. run data modify storage multipart-item:io input[{tag: {multipart-item: {part_count: 4}, origins-amulet: {complete: 0b}}}].tag.multipart-item.add_part set value 1b

execute if score #completed_amulets origins-amulet matches 1.. run data modify storage multipart-item:io input[{tag: {multipart-item: {part_count: 4}, origins-amulet: {complete: 0b}}}].tag.origins-amulet.complete set value 1b


execute if score #completed_amulets origins-amulet matches 1.. run function multipart-item:api/set_data