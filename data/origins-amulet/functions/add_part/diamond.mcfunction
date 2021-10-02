#> origins-amulet:add_part/diamond
#
#   > Add a diamond fragment to the amulet
#
#   - called by:
#       origins-amulet:parts_on_amulet_diamond
#
#@private


#   Get the multi-part item stack
function item-multi-part-lib:api/get_data


#   Make changes to the item stack
data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "diamond"}}}}].tag.item-multi-part-lib.parts append value {id: "minecraft:diamond", Count: 1b}

data modify storage item-multi-part-lib:io input[{tag: {item-multi-part-lib: {add_part: {new: 1b, id: "diamond"}}}}].tag.display.Lore append value '{"translate": " * %s", "color": "gray", "italic": false, "with": [{"translate": "item.minecraft.diamond", "color": "aqua"}]}'


#   Apply the changes to the multi-part item
function item-multi-part-lib:api/set_data