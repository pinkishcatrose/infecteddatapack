#Enrager Loop (Husk and Drowned Types)
scoreboard players add -Enrager Husks 1
execute if score -Enrager Husks matches 15 run scoreboard players set -Enrager Husks 0
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run effect give @e[type=minecraft:zombie,distance=..50] speed 15 2 true
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run effect give @e[type=minecraft:husk,distance=..50] speed 15 2 true
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run effect give @e[type=minecraft:drowned,distance=..50] speed 15 2 true
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run effect give @e[type=minecraft:zombie,distance=..50] strength 15 1 true
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run effect give @e[type=minecraft:husk,distance=..50] strength 15 1 true
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run effect give @e[type=minecraft:drowned,distance=..50] strength 15 1 true
execute if score -Enrager Husks matches 2 run execute at @e[tag=isEnrager] run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 1 0.5 0

#spiker loop
execute at @e[type=minecraft:drowned,tag=isSpiker] run execute if entity @a[distance=..3] run effect give @a[distance=..3] instant_damage 1 1 true
execute at @e[type=minecraft:drowned,tag=isSpiker] run execute if entity @a[distance=..3] run playsound minecraft:item.trident.hit hostile @a[distance=..10] ~ ~ ~ 10 1 1
execute at @e[type=minecraft:drowned,tag=isSpiker] run execute if entity @a[distance=..3] run particle minecraft:crit ~ ~ ~ 0 1 0 1 600 force
#Drowned Swim Speeds Loop
execute as @e[type=minecraft:drowned,tag=isSpiker] at @s if block ~ ~ ~ water run effect give @s speed 1 10 false
execute as @e[type=minecraft:drowned,tag=isSwimmer] at @s if block ~ ~ ~ water run effect give @s speed 5 20 false
#Zombie Replenisher
scoreboard players add -Healing Zombies 1
execute if score -Healing Zombies matches 3 run scoreboard players set -Healing Zombies 0
execute if score -Healing Zombies matches 2 run effect give @e[type=minecraft:zombie] minecraft:instant_damage
schedule function custommobs:infectedloops 3s

#Clicker clicking Loop
execute if predicate custommobs:clickernoisechance run scoreboard players add -ServerMath Clicking 1
execute if score -ServerMath Clicking matches 1 run execute at @e[type=minecraft:zombie,tag=isClicker] run execute if entity @a[distance=..50] run playsound minecraft:entity.strider.ambient master @a[distance=..50] ~ ~ ~ 1 0 1
execute if score -ServerMath Clicking matches 1 run execute at @e[type=minecraft:zombie,tag=isClicker] run execute if entity @a[distance=..50] run playsound minecraft:entity.strider.ambient master @a[distance=..50] ~ ~ ~ 1 1 1
execute if score -ServerMath Clicking matches 1 run execute at @e[type=minecraft:zombie,tag=isClicker] run execute if entity @a[distance=..50] run playsound minecraft:entity.strider.ambient master @a[distance=..50] ~ ~ ~ 1 2 1
execute if score -ServerMath Clicking matches 1 run execute at @e[type=minecraft:zombie,tag=isClicker] run execute if entity @a[distance=..50] run playsound minecraft:entity.strider.ambient master @a[distance=..50] ~ ~ ~ 1 0.5 1
execute if score -ServerMath Clicking matches 1 run execute at @e[type=minecraft:zombie,tag=isClicker] run execute if entity @a[distance=..50] run playsound minecraft:entity.strider.death master @a[distance=..50] ~ ~ ~ 1 1 1
scoreboard players set -ServerMath Clicking 0