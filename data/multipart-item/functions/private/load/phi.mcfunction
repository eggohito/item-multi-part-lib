#> multipart-item:private/load/phi
#
#   > A load function for initializing MinecraftPhi core modules
#
#@within function multipart-item:private/load


#   Add scoreboard objectives
scoreboard objectives add phiglobal dummy

scoreboard objectives add phiconst dummy

scoreboard objectives add phitemp dummy


#   Initialize MinecraftPhi chunk
forceload remove -30000000 1600

forceload add -30000000 1600

execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box

execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing = south]

fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock