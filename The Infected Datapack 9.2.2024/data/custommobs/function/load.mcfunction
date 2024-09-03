scoreboard objectives add Skeletons dummy
scoreboard objectives add Zombies dummy
scoreboard objectives add Husks dummy
scoreboard objectives add Difficulty dummy
scoreboard objectives add Gasmask dummy
scoreboard objectives add inInfectedDimension dummy
scoreboard objectives add health health

scoreboard objectives add infectionmessage dummy
scoreboard objectives add InfectionTimer dummy
scoreboard objectives add beginInfection dummy
scoreboard objectives add isInfected dummy
scoreboard objectives add InfectionStage1 dummy
scoreboard objectives add InfectionStage2 dummy
scoreboard objectives add InfectionStage3 dummy
scoreboard objectives add InfectionStage4 dummy
scoreboard objectives add InfectionStage5 dummy
scoreboard objectives add InfectionStage3damage dummy
scoreboard objectives add InfectionStage4damage dummy
scoreboard objectives add InfectionStage5damage dummy
scoreboard objectives add InfectionStage6damage dummy
scoreboard objectives add InfectionCure deathCount
scoreboard objectives add Adrenaline dummy
scoreboard objectives add Join minecraft.custom:minecraft.leave_game
scoreboard objectives add 1sectimer dummy
scoreboard objectives add Drowned dummy
scoreboard objectives add Clicking dummy

say Reloaded Rose's Server Tweaks

#schedule function custommobs:zombies/timer 4s
#schedule function custommobs:drowned/timer 6s
#schedule function custommobs:husks/timer 5s
schedule function custommobs:infectedloops 3s
