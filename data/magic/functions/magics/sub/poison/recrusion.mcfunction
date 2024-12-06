execute as @s run scoreboard players set @s magic_temp 1
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 50
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:poison 8 0
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run playsound minecraft:entity.spider.ambient hostile @a
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run playsound minecraft:entity.spider.ambient hostile @a
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:sneeze ~ ~ ~ 1 1 1 0 30
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run xp add @s -25 points
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run scoreboard players set @s magic_cooldown 440
execute unless entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] if entity @s[distance=..20] positioned ^ ^ ^1 if block ^ ^ ^ air run function magic:magics/sub/poison/recrusion
execute as @s run scoreboard players set @s magic_temp 0