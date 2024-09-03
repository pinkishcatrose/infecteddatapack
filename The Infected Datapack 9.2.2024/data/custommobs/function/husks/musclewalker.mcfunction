execute as @e[type=minecraft:husk,tag=musclewalker] run attribute @s minecraft:generic.movement_speed base set 0.27
execute as @e[type=minecraft:husk,tag=musclewalker] run attribute @s minecraft:generic.attack_damage base set 6.0
execute as @e[type=minecraft:husk,tag=musclewalker] run data merge entity @s {CustomName:'[{"text":"Infected Human - Mauler"}]'}
