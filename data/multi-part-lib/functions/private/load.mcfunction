#> multi-part-lib:private/load
#
#   > The load function for the `origins-amulet` namespace
#
#@within tag/function load:load


#   Toggle gamerules
gamerule commandBlockOutput false


#   Add scoreboard objectives
scoreboard objectives add m-p-l.main dummy {"text": "multi-part-lib.main"}


#   Set semantic version
scoreboard players set multi-part-library load.status 100

data modify storage multi-part-lib:global root.version set value "1.0.0"


#   Call `multi-part-lib:config/default` function
execute unless score #loaded m-p-l.main = #loaded m-p-l.main run function multi-part-lib:config/default


#   Display load/reload message
execute unless score #loaded m-p-l.main = #loaded m-p-l.main run tellraw @a {"translate": "[+ Loaded \"Multi-part Library (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "multi-part-lib:global", "nbt": "root.version"}]}

execute if score #loaded m-p-l.main = #loaded m-p-l.main run tellraw @a[tag = multi-part-lib.debugger] {"translate": "[! Reloaded \"Multi-part Library (Origins)\" @ v%s]", "color": "gold", "with": [{"storage": "multi-part-lib:global", "nbt": "root.version"}]}

scoreboard players set #loaded m-p-l.main 1