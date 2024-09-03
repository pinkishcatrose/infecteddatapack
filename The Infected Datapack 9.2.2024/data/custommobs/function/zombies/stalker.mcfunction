execute as @e[type=minecraft:zombie,tag=stalker] run attribute @s minecraft:generic.movement_speed base set 0.37
execute as @e[type=minecraft:zombie,tag=stalker] run attribute @s minecraft:generic.attack_damage base set 4.0
execute as @e[type=minecraft:zombie,tag=stalker] run data merge entity @s {CustomName:'[{"text":"Infected Human - Stalker"}]'}
