#######
# Compiled from data/splatoon/functions/main.mcscript
# to .//data/splatoon/functions/squid/uid.mcfunction
#
# Generated by Minecraft Script for 1.13
######
# this file is generated based on a function specified in.//data/splatoon/functions/main.mcscript
execute store result score @s id run scoreboard players get armorstandid id
scoreboard players add armorstandid id 1
tag @s add armorstandid