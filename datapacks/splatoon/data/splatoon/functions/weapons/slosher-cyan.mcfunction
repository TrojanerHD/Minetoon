#######
# Compiled from splatoon/functions/weapons/slosher-cyan.mcscript
# to .//splatoon/data/splatoon/functions/weapons/slosher-cyan.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if entity @s[team=purple] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"particle_purple\"}",Tags:["slosher","projectile"],NoGravity:1,Marker:1,Invisible:1}
execute if entity @s[team=purple] run scoreboard players set @e[type=armor_stand,name=particle_purple,limit=1,sort=nearest] duration 0
execute if entity @s[team=purple] anchored eyes run tp @e[type=armor_stand,name=particle_purple,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute if entity @s[team=cyan] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"particle_cyan\"}",Tags:["slosher","projectile"],NoGravity:1,Marker:1,Invisible:1}
execute if entity @s[team=cyan] run scoreboard players set @e[type=armor_stand,name=particle_purple,limit=1,sort=nearest] duration 0
execute if entity @s[team=cyan] anchored eyes run tp @e[type=armor_stand,name=particle_cyan,limit=1,sort=nearest] ~ ~ ~ ~ ~
