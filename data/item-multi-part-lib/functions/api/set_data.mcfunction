#> item-multi-part-lib:api/set_data
#
#   > Set the multi-part item's data
#
#@api


#   Fetch the player's inventory data
function item-multi-part-lib:phi.modifyinv/setup/whole_inventory


#   Modify the multi-part item from the player's inventory
    ##  Load the hotbar section, and modify the item stacks that has the `add_part` NBT compound in the section
    function item-multi-part-lib:phi.modifyinv/load/hotbar

    data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/impl/get_stacks

    data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:phi.modifyinv/apply/hotbar

    data remove storage item-multi-part-lib:global temp.container


    ##  Load the inventory section, and modify the item stacks that has the `add_part` NBT compound in the section
    function item-multi-part-lib:phi.modifyinv/load/inventory

    data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/impl/get_stacks

    data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:phi.modifyinv/apply/inventory

    data remove storage item-multi-part-lib:global temp.container


    ##  Load the armor section, and modify the item stacks that has the `add_part` NBT compound in the section
    function item-multi-part-lib:phi.modifyinv/load/armor

    data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/impl/get_stacks

    data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:phi.modifyinv/apply/armor

    data remove storage item-multi-part-lib:global temp.container


    ##  Load the offhand section, and modify the item stacks that has the `add_part` NBT compound in the section
    function item-multi-part-lib:phi.modifyinv/load/offhand

    data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/impl/get_stacks

    data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

    execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:phi.modifyinv/apply/offhand

    data remove storage item-multi-part-lib:global temp.container


#   Clean up `temp.container` NBT path from `item-multi-part-lib:global` storage and `input` NBT path from `item-multi-part-lib:io` storage
scoreboard players set #apiGetFunc i-m-p-l.main 0