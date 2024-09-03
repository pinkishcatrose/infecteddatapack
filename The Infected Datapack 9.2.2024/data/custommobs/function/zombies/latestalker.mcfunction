execute as @e[type=minecraft:zombie,tag=latestalker] run attribute @s minecraft:generic.movement_speed base set 0.35
execute as @e[type=minecraft:zombie,tag=latestalker] run attribute @s minecraft:generic.attack_damage base set 6.0
effect give @e[type=minecraft:zombie,tag=latestalker] minecraft:jump_boost 999999 1 true
execute as @e[type=minecraft:zombie,tag=latestalker] run tag @s add isFast
execute as @e[type=minecraft:zombie,tag=latestalker] run data merge entity @s {CustomName:'[{"text":"Infected Human - Super Stalker"}]'}
