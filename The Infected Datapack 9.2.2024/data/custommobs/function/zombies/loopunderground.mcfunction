#Zombie Math

#Pick random type, the higher they are on this list the more common they are. ex. Runners are the most common, clickers are rarer, and latebloaters are the rarest.loop.mcfunction
execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=cave,tag=!hoardsummoned] add shambler
execute as @s[type=zombie,tag=shambler] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=cave,tag=!hoardsummoned] add bloater
execute as @s[type=zombie,tag=bloater] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=cave,tag=!hoardsummoned] add latebloater
execute as @s[type=zombie,tag=latebloater] run tag @s add tempset

tag @s[type=zombie,tag=!set,tag=!tempset,tag=!miner,tag=!hoardsummoned] add shambler
execute as @s[type=zombie,tag=shambler] run tag @s add tempset

#Assign zombies to type

execute as @s[type=zombie,tag=shambler] run function custommobs:zombies/shambler
execute as @s[type=zombie,tag=bloater] run function custommobs:zombies/bloater
execute as @s[type=zombie,tag=latebloater] run function custommobs:zombies/latebloater
execute as @s[type=zombie,tag=hoard] run function custommobs:zombies/hoard

#Reset

tag @s[type=zombie] remove hoard
tag @s[type=zombie] remove shambler
tag @s[type=zombie] remove runner
tag @s[type=zombie] remove latestalker
tag @s[type=zombie] remove stalker
tag @s[type=zombie] remove bloater
tag @s[type=zombie] remove miner
tag @s[type=zombie] remove clicker
tag @s[type=zombie] remove latebloater
tag @s[type=zombie] remove gasmaskrand
tag @s[type=zombie] add set