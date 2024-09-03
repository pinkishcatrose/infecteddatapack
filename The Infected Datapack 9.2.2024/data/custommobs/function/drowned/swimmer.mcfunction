execute as @e[type=minecraft:drowned,tag=swimmer] run attribute @s minecraft:generic.movement_speed base set 0.2

execute as @e[type=minecraft:drowned,tag=swimmer] run data merge entity @s {CustomName:'[{"text":"Infected Human - Swimmer"}]'}

tag @e[type=minecraft:drowned,tag=swimmer] add isSwimmer
