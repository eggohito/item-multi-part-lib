#> multipart-item:private/setup/whole_inventory
#
#   > A modified version of `phi.modifyinv:setup/whole_inventory`
#
#   - Copy player inventory data to storage and sort into sections so they can be loaded.
#
#@api


#   Reset sections:
data modify storage phi.modifyinv:temp inventory set value []
data modify storage phi.modifyinv:temp hotbar set value []
data modify storage phi.modifyinv:temp armor set value []
data modify storage phi.modifyinv:temp offhand set value []


#   Copy whole inventory data:
data modify storage phi.modifyinv:temp whole_inventory set from entity @s Inventory

execute if score #apiGetFunc m-i.main matches 1 run data modify storage phi.modifyinv:temp whole_inventory set from storage multipart-item:io input


#   Sort the slots into sections:
function phi.modifyinv:setup/internal/whole_inventory/sort_slots