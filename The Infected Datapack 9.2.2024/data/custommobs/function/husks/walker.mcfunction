execute as @e[type=minecraft:husk,tag=walker] run attribute @s minecraft:generic.movement_speed base set 0.25
execute as @e[type=minecraft:husk,tag=walker] run data merge entity @s {CustomName:'[{"text":"Infected Human - Walker"}]'}
