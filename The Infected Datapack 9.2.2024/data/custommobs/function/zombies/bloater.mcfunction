execute as @e[type=minecraft:zombie,tag=bloater] run attribute @s generic.armor base set 10
execute as @e[type=minecraft:zombie,tag=bloater] run attribute @s minecraft:generic.attack_damage base set 10.0
execute as @e[type=minecraft:zombie,tag=bloater] run attribute @s minecraft:generic.max_health base set 50
effect give @e[type=minecraft:zombie,tag=bloater] minecraft:instant_damage 10 100 false
execute as @e[type=minecraft:zombie,tag=bloater] run attribute @s minecraft:generic.movement_speed base set 0.2
execute as @e[type=minecraft:zombie,tag=bloater] run attribute @s minecraft:generic.movement_speed base set 0.27
execute as @e[type=minecraft:zombie,tag=bloater] run data merge entity @s {CustomName:'[{"text":"Infected Human - Bloater"}]'}
execute as @e[type=minecraft:zombie,tag=bloater] run tag @s add isBloater
