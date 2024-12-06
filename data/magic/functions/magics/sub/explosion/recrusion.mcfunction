execute as @s run scoreboard players set @s magic_temp 1
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 50
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run playsound minecraft:entity.generic.extinguish_fire master @s
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run playsound minecraft:entity.generic.extinguish_fire master @s
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run summon armor_stand ~ ~ ~ {Team:"magic_exp",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run scoreboard players set @s magic_exp_cd 66
execute as @e[limit=1,sort=arbitrary,type=minecraft:armor_stand,team=magic_exp] run scoreboard players set @s magic_exp_delay 61
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run xp add @s -150 points
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:hunger 7 255
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run scoreboard players set @s magic_cooldown 440
execute unless entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] if entity @s[distance=..50] positioned ^ ^ ^1 if block ^ ^ ^ air run function magic:magics/sub/explosion/recrusion
execute as @s run scoreboard players set @s magic_temp 0