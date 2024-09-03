execute as @e[type=minecraft:husk,tag=enrager] run attribute @s minecraft:generic.attack_damage base set 6.0
execute as @e[type=minecraft:husk,tag=enrager] run data merge entity @s {CustomName:'[{"text":"Infected Human - Enrager"}]'}
tag @e[type=minecraft:husk,tag=enrager] add isEnrager

