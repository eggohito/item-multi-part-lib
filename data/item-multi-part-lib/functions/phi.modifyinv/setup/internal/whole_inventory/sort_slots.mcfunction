# Get the last slot number in preparation:
execute store result score $phi.modifyinv.slot phitemp run data get storage phi.modifyinv:temp whole_inventory[-1].Slot
execute store result score $phi.modifyinv.slot_count phitemp run data get storage phi.modifyinv:temp whole_inventory

# Check all the sections in turn, sorting them (slots always appear in order, processing in reverse order for more optimal list iteration):
function item-multi-part-lib:phi.modifyinv/setup/internal/whole_inventory/check_offhand
function item-multi-part-lib:phi.modifyinv/setup/internal/whole_inventory/check_armor
function item-multi-part-lib:phi.modifyinv/setup/internal/whole_inventory/check_inventory
function item-multi-part-lib:phi.modifyinv/setup/internal/whole_inventory/check_hotbar