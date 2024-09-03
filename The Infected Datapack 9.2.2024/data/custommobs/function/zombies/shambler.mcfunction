execute as @e[type=minecraft:zombie,tag=shambler] run attribute @s generic.armor base set 8
execute as @e[type=minecraft:zombie,tag=shambler] run attribute @s minecraft:generic.attack_damage base set 8.0
execute as @e[type=minecraft:zombie,tag=shambler] run attribute @s minecraft:generic.max_health base set 40
effect give @e[type=minecraft:zombie,tag=shambler] minecraft:instant_damage 5 100 false
execute as @e[type=minecraft:zombie,tag=shambler] run attribute @s minecraft:generic.movement_speed base set 0.3
effect give @e[type=minecraft:zombie,tag=shambler] minecraft:jump_boost 999999 0 true
execute as @e[type=minecraft:zombie,tag=shambler] run data merge entity @s {CustomName:'[{"text":"Infected Human - Shambler"}]'}
