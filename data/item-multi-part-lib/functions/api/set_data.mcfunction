#> item-multi-part-lib:api/set_data
#
#   > Set the multi-part item's data
#
#@api


#   Fetch the player's inventory data
function item-multi-part-lib:phi.modifyinv/setup/whole_inventory


#   Modify the multi-part item from the player's inventory
    ##  Load the data of the hotbar section
    function item-multi-part-lib:phi.modifyinv/load/hotbar


        ### Get the data of the MinecraftPhi shulker box
        data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] merge from storage item-multi-part-lib:io input

        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

        function item-multi-part-lib:phi.modifyinv/apply/hotbar

        data remove storage item-multi-part-lib:global temp


    ##  Load the data of the inventory section
    function item-multi-part-lib:phi.modifyinv/load/inventory


        ### Get the data of the MinecraftPhi shulker box
        data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] merge from storage item-multi-part-lib:io input

        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

        function item-multi-part-lib:phi.modifyinv/apply/inventory

        data remove storage item-multi-part-lib:global temp


        ##  Load the data of the armor section
    function item-multi-part-lib:phi.modifyinv/load/armor


        ### Get the data of the MinecraftPhi shulker box
        data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] merge from storage item-multi-part-lib:io input

        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

        function item-multi-part-lib:phi.modifyinv/apply/armor

        data remove storage item-multi-part-lib:global temp


        ##  Load the data of the offhand section
    function item-multi-part-lib:phi.modifyinv/load/offhand


        ### Get the data of the MinecraftPhi shulker box
        data modify storage item-multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] merge from storage item-multi-part-lib:io input

        execute if data storage item-multi-part-lib:global temp.container[{tag: {item-multi-part-lib: {add_part: {new: 1b}}}}] run function item-multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage item-multi-part-lib:global temp.container

        function item-multi-part-lib:phi.modifyinv/apply/offhand

        data remove storage item-multi-part-lib:global temp


#   Clean up `temp.container` NBT path from `item-multi-part-lib:global` storage and `input` NBT path from `item-multi-part-lib:io` storage
data remove storage item-multi-part-lib:global temp

data remove storage item-multi-part-lib:io input