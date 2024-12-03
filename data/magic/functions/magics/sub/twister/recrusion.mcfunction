execute as @s run scoreboard players set @s magic_temp 1

# effect
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:levitation 1 15
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:wither 2 2

# particle
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1 ~1 ~0 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0.8 ~1.5 ~0.8 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0 ~2 ~1 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-0.8 ~2.5 ~0.8 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1 ~3 ~0 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-0.8 ~3.5 ~-0.8 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0 ~4 ~-1 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0.8 ~4.5 ~-0.8 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1.4 ~5 ~0 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1.12 ~5.5 ~1.12 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0 ~6 ~1.4 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1.12 ~6.5 ~1.12 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1.4 ~7 ~0 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1.12 ~7.5 ~-1.12 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0 ~8 ~-1.4 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1.12 ~8.5 ~-1.12 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1.8 ~9 ~0 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1.48 ~9.5 ~1.48 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0 ~10 ~1.8 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1.48 ~10.5 ~1.48 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1.8 ~11 ~0 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~-1.48 ~11.5 ~-1.48 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~0 ~12 ~-1.8 0 0 0 0 7
execute as @a[gamemode=survival,distance=..2,scores={magic_temp=0}] at @s run particle minecraft:spit ~1.48 ~12.5 ~-1.48 0 0 0 0 7

execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run xp add @s -40 points
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] run scoreboard players set @s magic_cooldown 440
execute unless entity @a[gamemode=survival,distance=..2,scores={magic_temp=0}] if entity @s[distance=..20] positioned ^ ^ ^1 if block ^ ^ ^ air run function magic:magics/sub/twister/recrusion
execute as @s run scoreboard players set @s magic_temp 0