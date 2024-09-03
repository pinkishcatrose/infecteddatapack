#Select class by random chance
#execute if score -ServerMath Drowned matches 0 run tag @e[type=drowned,tag=!set,tag=!miner,tag=!hoardsummoned] add swimmer
#execute if score -ServerMath Drowned matches 1 run tag @e[type=drowned,tag=!set,tag=!miner,tag=!hoardsummoned] add spiker
#xecute if score -ServerMath Drowned matches 2 run tag @e[type=drowned,tag=!set,tag=!miner,tag=!hoardsummoned] add enrager

execute if predicate custommobs:zombiechance run tag @s[type=drowned,tag=!set,tag=!tempset] add swimmer
execute as @s[type=drowned,tag=swimmer] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=drowned,tag=!set,tag=!tempset] add spiker
execute as @s[type=drowned,tag=spiker] run tag @s add tempset

tag @s[type=drowned,tag=!set,tag=!tempset] add enrager
execute as @s[type=drowned,tag=enrager] run tag @s add tempset

#Change drowned to type
execute as @e[type=drowned,tag=swimmer] run function custommobs:drowned/swimmer
execute as @e[type=drowned,tag=spiker] run function custommobs:drowned/spiker
execute as @e[type=drowned,tag=enrager] run function custommobs:drowned/enrager

tag @e[type=drowned] remove swimmer
tag @e[type=drowned] remove spiker
tag @e[type=drowned] remove enrager
tag @e[type=drowned] remove tempset
tag @e[type=drowned] add set
