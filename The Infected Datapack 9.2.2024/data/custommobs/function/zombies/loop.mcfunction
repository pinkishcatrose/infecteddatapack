#Zombie Math

#set cave zombies
execute as @s[type=zombie,tag=!set] at @s if entity @s[y=60,dy=-200] run tag @s add cave

#Pick random type, the higher they are on this list the more common they are. ex. Runners are the most common, clickers are rarer, and latebloaters are the rarest.loop.mcfunction
execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add runner
execute as @s[type=zombie,tag=runner] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add stalker
execute as @s[type=zombie,tag=stalker] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add latestalker
execute as @s[type=zombie,tag=latestalker] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add clicker
execute as @s[type=zombie,tag=clicker] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add shambler
execute as @s[type=zombie,tag=shambler] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add bloater
execute as @s[type=zombie,tag=bloater] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add latebloater
execute as @s[type=zombie,tag=latebloater] run tag @s add tempset

tag @s[type=zombie,tag=!set,tag=!tempset,tag=!cave,tag=!hoardsummoned] add hoard
execute as @s[type=zombie,tag=hoard] run tag @s add tempset

#Assign zombies to type

execute as @s[type=zombie,tag=cave] run function custommobs:zombies/loopunderground

execute as @s[type=zombie,tag=runner] run function custommobs:zombies/runner
execute as @s[type=zombie,tag=stalker] run function custommobs:zombies/stalker
execute as @s[type=zombie,tag=latestalker] run function custommobs:zombies/latestalker
execute as @s[type=zombie,tag=clicker] run function custommobs:zombies/clicker
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
tag @s[type=zombie] remove cave
tag @s[type=zombie] remove clicker
tag @s[type=zombie] remove latebloater
tag @s[type=zombie] remove gasmaskrand
tag @s[type=zombie] remove tempset
tag @s[type=zombie] add set