#> item-multi-part-lib:private/load
#
#   > The load function for the `origins-amulet` namespace
#
#@within tag/function load:load


#   Toggle gamerules
gamerule commandBlockOutput false


#   Add scoreboard objectives
scoreboard objectives add i-m-p-l.main dummy {"text": "item-multi-part-lib.main"}


#   Set semantic version
scoreboard players set multi-part-library load.status 100

data modify storage item-multi-part-lib:global root.version set value "1.0.0"


#   Call `item-multi-part-lib:config/default` function
execute unless score #loaded i-m-p-l.main = #loaded i-m-p-l.main run function item-multi-part-lib:config/default


#   Initialize MinecraftPhi chunk
forceload remove -30000000 1600

forceload add -30000000 1600

execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box

execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing = south]


#   Display load/reload message
execute unless score #loaded i-m-p-l.main = #loaded i-m-p-l.main run tellraw @a {"translate": "[+ Loaded \"Item Multi-part Library (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "item-multi-part-lib:global", "nbt": "root.version"}]}

execute if score #loaded i-m-p-l.main = #loaded i-m-p-l.main run tellraw @a[tag = item-multi-part-lib.debugger] {"translate": "[! Reloaded \"Item Multi-part Library (Origins)\" @ v%s]", "color": "gold", "with": [{"storage": "item-multi-part-lib:global", "nbt": "root.version"}]}

scoreboard players set #loaded i-m-p-l.main 1