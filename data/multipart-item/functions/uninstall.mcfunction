#> multipart-item:uninstall
#
#   > Remove stuff added by the `multipart-item` namespace
#
#@user


#   Display a disable message
tellraw @a {"translate": "[- Disabled \"Multipart Item (Origins)\" @ v%s]", "color": "red", "with": [{"storage": "multipart-item:global", "nbt": "root.version"}]}


#   Remove scoreboard objectives
scoreboard objectives remove m-i.main


#   Remove command NBT storages
data remove storage multipart-item:global root

data remove storage multipart-item:io input


#   Disable the datapack
datapack disable "file/multipart-item_dev"

datapack disable "file/multipart-item_v1.0.0"

datapack disable "file/multipart-item_v1.0.0.zip"