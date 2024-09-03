execute as @e[type=minecraft:drowned,tag=spiker] run attribute @s minecraft:generic.movement_speed base set 0.2
execute as @e[type=minecraft:drowned,tag=spiker] run data merge entity @s {CustomName:'[{"text":"Infected Human - Spiker"}]'}

tag @e[type=minecraft:drowned,tag=spiker] add isSpiker
