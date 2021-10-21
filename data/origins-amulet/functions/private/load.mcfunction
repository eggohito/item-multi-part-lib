#> origins-amulet:private/load
#
#   > The load function for the `origins-amulet` namespace
#
#@within tag/function load:post_load


#   Add scoreboard objectives
scoreboard objectives add origins-amulet dummy


#   Display load/reload message
execute unless score #loaded origins-amulet = #loaded origins-amulet run tellraw @a {"text": "[+ Loaded \"Amulet (Origins)\"]", "color": "green"}

execute if score #loaded origins-amulet = #loaded origins-amulet run tellraw @a[tag = origins-amulet.debugger] {"text": "[= Reloaded \"Amulet (Origins)\"]", "color": "gold"}

scoreboard players set #loaded origins-amulet 1