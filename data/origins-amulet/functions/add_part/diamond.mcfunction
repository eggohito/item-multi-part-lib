#> origins-amulet:add_part/diamond
#
#   > Add a diamond fragment to the amulet
#
#   - called by:
#       origins-amulet:parts_on_amulet_diamond
#
#@private


#   Get the multi-part item stack
function multipart-item:api/get_data


#   Make changes to the item stack
data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "diamond"}}}].tag.multipart-item.parts append value {id: "minecraft:diamond", Count: 1b}

execute unless data storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "diamond"}}}].tag.multipart-item.prepped run data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "diamond"}}}].tag.display.Lore append value '{"text": "Attached parts:", "color": "light_purple", "italic": false}'

data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "diamond"}}}].tag.display.Lore append value '{"translate": " * %s", "color": "gray", "italic": false, "with": [{"translate": "item.minecraft.diamond", "color": "aqua"}]}'

data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "diamond"}}}].tag.multipart-item.prepped set value 1b


#   Apply the changes to the multi-part item
function multipart-item:api/set_data

function origins-amulet:add_part/general