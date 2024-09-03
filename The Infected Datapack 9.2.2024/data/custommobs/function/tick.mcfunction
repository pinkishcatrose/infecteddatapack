#Kill yourself
tp @e[type=piglin_brute] ~ ~-3000 ~
tp @e[x=0,type=creeper] ~ ~-3000 ~
tp @e[x=0,type=spider] ~ ~-3000 ~
tp @e[x=0,type=skeleton] ~ ~-3000 ~
tp @e[x=0,type=cave_spider] ~ ~-3000 ~
tp @e[x=0,type=stray] ~ ~-3000 ~

execute as @e[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] run function custommobs:zombies/loop
execute as @e[type=husk,tag=!set,tag=!tempset] run function custommobs:husks/loop
execute as @e[type=drowned,tag=!set,tag=!tempset] run function custommobs:drowned/loop

execute as @e[type=minecraft:drowned] at @s if block ~ ~ ~ air run effect clear @s
