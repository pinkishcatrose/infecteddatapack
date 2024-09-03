execute as @e[type=minecraft:zombie,tag=latebloater] run attribute @s generic.armor base set 15
execute as @e[type=minecraft:zombie,tag=latebloater] run attribute @s minecraft:generic.attack_damage base set 15.0
effect give @e[type=minecraft:zombie,tag=latebloater] minecraft:instant_damage 10 100 false
execute as @e[type=minecraft:zombie,tag=latebloater] run attribute @s minecraft:generic.movement_speed base set 0.2
execute as @e[type=minecraft:zombie,tag=latebloater] run attribute @s minecraft:generic.max_health base set 60
execute as @e[type=minecraft:zombie,tag=latebloater] run data merge entity @s {CustomName:'[{"text":"Infected Human - Super Bloater"}]'}
execute as @e[type=minecraft:zombie,tag=latebloater] run tag @s add isBloater
