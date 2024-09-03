#Select class by random chance

execute if predicate custommobs:zombiechance run tag @s[type=husk,tag=!set,tag=!tempset] add walker
execute as @s[type=husk,tag=walker] run tag @s add tempset

execute if predicate custommobs:zombiechance run tag @s[type=husk,tag=!set,tag=!tempset] add musclewalker
execute as @s[type=husk,tag=musclewalker] run tag @s add tempset

tag @s[type=husk,tag=!set,tag=!tempset] add enrager
execute as @s[type=husk,tag=enrager] run tag @s add tempset

#Change husks to type
execute as @e[type=husk,tag=walker] run function custommobs:husks/walker
execute as @e[type=husk,tag=musclewalker] run function custommobs:husks/musclewalker
execute as @e[type=husk,tag=enrager] run function custommobs:husks/enrager

tag @e[type=husk] remove walker
tag @e[type=husk] remove musculewalker
tag @e[type=husk] remove enrager
tag @e[type=husk] remove tempset
tag @e[type=husk] add set
