#> multi-part-lib:api/set_data
#
#   > Set the multi-part item's data
#
#@api


#   Fetch the player's inventory data
function phi.modifyinv:setup/whole_inventory


#   Modify the multi-part item from the player's inventory
    ##  Load the data of the hotbar section
    function phi.modifyinv:load/hotbar


        ### Get the data of the MinecraftPhi shulker box
        data modify storage multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag merge from storage multi-part-lib:io input

        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run function multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage multi-part-lib:global temp.container

        function phi.modifyinv:apply/hotbar


    ##  Load the data of the inventory section
    function phi.modifyinv:load/inventory


        ### Get the data of the MinecraftPhi shulker box
        data modify storage multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag merge from storage multi-part-lib:io input

        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run function multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage multi-part-lib:global temp.container

        function phi.modifyinv:apply/inventory


        ##  Load the data of the armor section
    function phi.modifyinv:load/armor


        ### Get the data of the MinecraftPhi shulker box
        data modify storage multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag merge from storage multi-part-lib:io input

        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run function multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage multi-part-lib:global temp.container

        function phi.modifyinv:apply/armor


        ##  Load the data of the offhand section
    function phi.modifyinv:load/offhand


        ### Get the data of the MinecraftPhi shulker box
        data modify storage multi-part-lib:global temp.container set from block -30000000 0 1602 Items


        ### Modify the item stack(s) that have the `add_part` NBT compound
        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run data modify storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}].tag merge from storage multi-part-lib:io input

        execute if data storage multi-part-lib:global temp.container[{tag: {multi-part-lib: {add_part: {new: 1b}}}}] run function multi-part-lib:private/finalize


        ### Apply the changes to the MinecraftPhi shulker box
        data modify block -30000000 0 1602 Items set from storage multi-part-lib:global temp.container

        function phi.modifyinv:apply/offhand


#   Clean up `temp.container` NBT path from `multi-part-lib:global` storage and `input` NBT path from `multi-part-lib:io` storage
data remove storage multi-part-lib:global temp

data remove storage multi-part-lib:io input