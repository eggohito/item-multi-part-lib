#> origins-amulet:add_part/emerald
#   > Add an emerald fragment to the amulet
#
#   - called by:
#       origins-amulet:parts_on_amulet_emerald
#
#@private


#   Get the multi-part item stack
function multi-part-lib:api/get_data


#   Make changes to the item stack
data modify storage multi-part-lib:io input.tag.multi-part-lib.parts append value {id: "minecraft:emerald", Count: 1b}

data modify storage multi-part-lib:io input.tag.display.Lore append value '{"text": " * Emerald", "color": "green", "italic": false}'


#   Apply the changes to the amulet item
function multi-part-lib:api/set_data