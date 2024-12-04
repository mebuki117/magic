execute as @s run scoreboard players set @s magic_temp 1
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 50
execute at @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run summon minecraft:lightning_bolt ~ ~ ~
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run function magic:remove_xp
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run scoreboard players set @s magic_cooldown 440
execute unless entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] if entity @s[distance=..30] positioned ^ ^ ^1 if block ^ ^ ^ air run function magic:magics/sub/thunder/recrusion
execute as @s run scoreboard players set @s magic_temp 0