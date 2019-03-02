execute unless entity @e[tag=minigame] run summon armor_stand -1 9 38 {Tags:["minigame"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1}
execute as @e[tag=minigame] at @s unless entity @p[distance=..20] run fill -6 8 43 4 8 33 minecraft:orange_stained_glass
execute at @e[tag=minigame] as @a[distance=..50,tag=lobby] at @s if block ~ ~-0.1 ~ minecraft:orange_stained_glass run setblock ~ ~-0.1 ~ air
execute at @e[tag=minigame] as @a[distance=..30,tag=lobby] at @s if block ~ ~ ~ water run tp @s 6 12 38
