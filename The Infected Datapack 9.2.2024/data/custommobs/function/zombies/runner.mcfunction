execute as @e[type=minecraft:zombie,tag=runner] run attribute @s minecraft:generic.movement_speed base set 0.38
execute as @e[type=minecraft:zombie,tag=runner] run data merge entity @s {CustomName:'[{"text":"Infected Human - Runner"}]'}
