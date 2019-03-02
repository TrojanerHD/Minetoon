#######
# Compiled from data/splatoon/functions/hphandler.mcscript
# to .//splatoon/data/splatoon/functions/hphandler.mcfunction
#
# Generated by Minecraft Script for 1.13
######

execute if entity @s[name=particle_cyan] run tag @a[distance=..0.5,team=purple,tag=!tempdamage,tag=!damage] add tempdamage
execute if entity @s[name=particle_cyan] run scoreboard players remove @a[tag=tempdamage,tag=!damage] hp 1
execute if entity @s[name=particle_cyan] run tag @a[tag=tempdamage] add damage
execute if entity @s[name=particle_cyan] run tag @a[tag=tempdamage] remove tempdamage
execute if entity @s[name=particle_cyan] run tag @a[distance=0.5..,tag=damage] remove damage

execute if entity @s[name=particle_purple] run tag @a[distance=..0.5,team=cyan,tag=!tempdamage,tag=!damage] add tempdamage
execute if entity @s[name=particle_purple] run scoreboard players remove @a[tag=tempdamage,tag=!damage] hp 1
execute if entity @s[name=particle_purple] run tag @a[tag=tempdamage] add damage
execute if entity @s[name=particle_purple] run tag @a[tag=tempdamage] remove tempdamage
execute if entity @s[name=particle_purple] run tag @a[distance=0.5..,tag=damage] remove damage

execute as @a[scores={hp=..0}] run scoreboard players set @s hp 0
execute as @r[tag=dead,gamemode=!creative] run kill @s
execute as @r[tag=dead,gamemode=!creative] run tag @s remove dead
execute as @r[tag=dead,gamemode=!creative] run scoreboard players set @s hp 150