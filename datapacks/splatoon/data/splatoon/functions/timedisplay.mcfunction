#######
# Compiled from data/splatoon/functions/timedisplay.mcscript
# to .//splatoon/data/splatoon/functions/timedisplay.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @r[scores={start=1..}] run xp add @a -1 levels
schedule function splatoon:timedisplay 1s