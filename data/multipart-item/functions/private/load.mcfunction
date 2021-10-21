#> multipart-item:private/load
#
#   > The load function for the `origins-amulet` namespace
#
#@within tag/function load:load


#   Load MinecraftPhi modules
function multipart-item:private/load/phi


#   Add scoreboard objectives
scoreboard objectives add m-i.main dummy {"text": "multipart-item"}


#   Set semantic version
scoreboard players set multipart-item load.status 100

data modify storage multipart-item:global root.version set value "1.0.0"


#   Display load/reload message
execute unless score #loaded m-i.main = #loaded m-i.main run tellraw @a {"translate": "[+ Loaded \"Multipart Item (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "multipart-item:global", "nbt": "root.version"}]}

execute if score #loaded m-i.main = #loaded m-i.main run tellraw @a[tag = multipart-item.debugger] {"translate": "[= Reloaded \"Multipart Item (Origins)\" @ v%s]", "color": "gold", "with": [{"storage": "multipart-item:global", "nbt": "root.version"}]}

scoreboard players set #loaded m-i.main 1