#######
# Compiled from data/splatoon/functions/main.mcscript
# to .//splatoon/data/splatoon/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
function splatoon:hiding
function splatoon:climbing
function splatoon:falling
function splatoon:squid
function splatoon:start_game
execute as @a at @s run tag @e[tag=mcscriptTags] remove dead
execute as @a at @s store result score @s sneak run scoreboard players get @s sneak
execute as @a at @s run scoreboard players enable @s leave
execute as @a at @s if block ~ ~-0.1 ~ #splatoon:killblocks run tag @s add dead
execute as @a at @s if block ~ ~-0.1 ~ #splatoon:alllist[waterlogged=true] run tag @s add dead
execute as @a at @s run scoreboard players set @s sneak 0
execute as @e[type=armor_stand,name=squid,limit=1,sort=random,tag=!armorstandid] store result score @s id run scoreboard players get armorstandid id
execute as @e[type=armor_stand,name=squid,limit=1,sort=random,tag=!armorstandid] run scoreboard players add armorstandid id 1
execute as @e[type=armor_stand,name=squid,limit=1,sort=random,tag=!armorstandid] run tag @s add armorstandid
execute as @r[tag=!summonedStand] at @s run summon armor_stand ~ ~ ~ {Invisible:1,CustomName:"{\"text\":\"squid\"}",NoGravity:1,Marker:1}
execute as @r[tag=!summonedStand] at @s run tag @s add summonedStand
execute as @r[tag=!playerid] run tag @s add receiveID
execute as @a[tag=receiveID] store result score @s id run scoreboard players get playerid id
execute as @a[tag=receiveID] run scoreboard players add playerid id 1
execute as @a[tag=receiveID] run tag @s add playerid
execute as @a[tag=receiveID] run tag @s remove receiveID
execute as @e[type=item] store result score @s Age run data get entity @s Age
execute as @r[tag=del] at @s as @e[type=item,distance=..2,scores={Age=..20}] run kill @s
execute as @r[scores={start=1..}] run tag @a remove lobby
execute as @r[scores={start=1..}] run scoreboard players remove @s start 1
execute as @r[scores={start=1..}] if score @s start matches 2400 run title @a actionbar [{"text":"Noch 2 Minuten!","color":"yellow"}]
execute as @r[scores={start=1..}] if score start start matches 1200 run title @a actionbar [{"text":"Noch 1 Minute!","color":"yellow"}]
execute as @r[scores={start=1..}] if score start start matches 600 run title @a actionbar [{"text":"Noch 30 Sekunden!","color":"red"}]
execute as @r[scores={start=..0}] run bossbar set minecraft:time visible false
execute as @r[scores={start=..0}] run tag @e[tag=mcscriptTags] remove hasStart
execute as @r[scores={start=..0}] run scoreboard players reset @a start
execute as @r[scores={start=..0}] run scoreboard players set @a timer 200
execute as @a[scores={timer=1..}] run scoreboard players remove @a timer 1
execute as @a[scores={timer=1..}] run gamemode spectator @a
execute as @a[scores={timer=1..}] run tp @a 42.00 32.00 -181.02 -90 90
execute as @a[scores={timer=1..}] if score @s timer matches ..0 run tag @a add lobby
execute as @a[scores={timer=1..}] if score @s timer matches ..0 run gamemode adventure @a
execute as @a[scores={timer=1..}] if score @s timer matches ..0 run tp @a 9.98 9.50 9.00
execute as @a if score @s ink matches 251.. run scoreboard players set @s ink 250
execute as @a if score @s ink matches ..0 run scoreboard players set @s ink 0
execute as @e[type=area_effect_cloud] run data merge entity @s {Duration:2147483647}
execute as @e[type=area_effect_cloud] run data merge entity @s {Duration:2147483647}
execute as @e[type=area_effect_cloud] run data merge entity @s {Duration:2147483647}
# Extended from data/splatoon/functions/test.mcscript
# to .//splatoon/data/splatoon/functions/main.mcfunction
#/say hi
