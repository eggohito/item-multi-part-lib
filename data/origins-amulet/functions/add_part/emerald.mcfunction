#> origins-amulet:add_part/emerald
#   > Add an emerald fragment to the amulet
#
#   - called by:
#       origins-amulet:parts_on_amulet_emerald
#
#@private


#   Get the multi-part item stack
function item-multi-part-lib:api/get_data


#   Make changes to the item stack
data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "origins-amulet:emerald_part"}}}}].tag.item-multi-part-lib.parts append value {id: "minecraft:emerald", Count: 1b}

execute unless data storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "origins-amulet:emerald_part"}}}}].tag.item-multi-part-lib.prepped run data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "origins-amulet:emerald_part"}}}}].tag.display.Lore append value '{"text": "Attached parts:", "color": "light_purple", "italic": false}'

data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "origins-amulet:emerald_part"}}}}].tag.display.Lore append value '{"translate": " * %s", "color": "gray", "italic": false, "with": [{"translate": "item.minecraft.emerald", "color": "green"}]}'

data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "origins-amulet:emerald_part"}}}}].tag.item-multi-part-lib.prepped set value 1b


#   Apply the changes to the amulet item
function item-multi-part-lib:api/set_data

function origins-amulet:add_part/general