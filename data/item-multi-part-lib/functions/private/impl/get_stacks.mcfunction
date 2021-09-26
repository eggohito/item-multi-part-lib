#> item-multi-part-lib:private/impl/get_stacks
#
#   > Get the item stacks from the `temp.container` NBT path, and modify them individually
#
#@within function *:api/set_data


#   Copy the contents of the `temp.container` compound list
data modify storage item-multi-part-lib:global temp.impl.stacks append from storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}]

data remove storage item-multi-part-lib:global temp.container[{tag: {item-multi-part: {add_part: {new: 1b}}}}]


#   Process the `temp.impl.stacks` compound list, and re-append the processed item stacks to the `temp.container` NBT path
function item-multi-part-lib:private/impl/set_stacks