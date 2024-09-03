execute as @e[type=minecraft:drowned,tag=swimmer] run attribute @s minecraft:generic.movement_speed base set 0.2
execute as @e[type=minecraft:drowned,tag=enrager] run attribute @s minecraft:generic.attack_damage base set 6.0
execute as @e[type=minecraft:drowned,tag=enrager] run data merge entity @s {CustomName:'[{"text":"Infected Human - Enrager"}]'}

tag @e[type=minecraft:drowned,tag=enrager] add isEnrager

