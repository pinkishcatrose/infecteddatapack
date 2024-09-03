execute as @e[type=minecraft:zombie,tag=clicker] run attribute @s generic.armor base set 5
execute as @e[type=minecraft:zombie,tag=clicker] run attribute @s minecraft:generic.attack_damage base set 6.0
execute as @e[type=minecraft:zombie,tag=clicker] run attribute @s generic.movement_speed base set 0.33
effect give @e[type=minecraft:zombie,tag=clicker] minecraft:instant_damage 10 100 false
effect give @e[type=minecraft:zombie,tag=clicker] minecraft:jump_boost 999999 2 true
execute as @e[type=minecraft:zombie,tag=clicker] run data merge entity @s {CustomName:'[{"text":"Infected Human - Clicker"}]'}
execute as @e[type=minecraft:zombie,tag=clicker] run tag @s add isClicker
