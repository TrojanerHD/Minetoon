#######
# Compiled from splatoon/functions/developers/handledevtools.mcscript
# to .//data/splatoon/functions/developers/handledevtools.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players enable @a devtools
execute as @r store result score @s devtools run scoreboard players get @s devtools
execute as @r if entity @s[scores={devtools=1..}] run function splatoon:developers/givedevtools