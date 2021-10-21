#> origins-amulet:add_part/emerald
#   > Add an emerald fragment to the amulet
#
#   - called by:
#       origins-amulet:parts_on_amulet_emerald
#
#@private


#   Get the multi-part item stack
function multipart-item:api/get_data


#   Make changes to the item stack
data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "emerald"}}}].tag.multipart-item.parts append value {id: "minecraft:emerald", Count: 1b}

execute unless data storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "emerald"}}}].tag.multipart-item.prepped run data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "emerald"}}}].tag.display.Lore append value '{"text": "Attached parts:", "color": "light_purple", "italic": false}'

data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "emerald"}}}].tag.display.Lore append value '{"translate": " * %s", "color": "gray", "italic": false, "with": [{"translate": "item.minecraft.emerald", "color": "green"}]}'

data modify storage multipart-item:io input[{tag: {multipart-item: {add_part: 1b}, origins-amulet: {part_id: "emerald"}}}].tag.multipart-item.prepped set value 1b


#   Apply the changes to the amulet item
function multipart-item:api/set_data

function origins-amulet:add_part/general