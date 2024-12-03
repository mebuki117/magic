execute as @s run scoreboard players set @s magic_lb_dummy 1
execute as @a[gamemode=survival,distance=..2,scores={magic_lb_dummy=0}] run effect give @s minecraft:poison 7 0
execute at @s if entity @a[gamemode=survival,distance=..2,scores={magic_lb_dummy=0}] run playsound minecraft:entity.spider.ambient hostile @a
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_lb_dummy=0}] run function magic:remove_xp
execute as @s if entity @a[gamemode=survival,distance=..2,scores={magic_lb_dummy=0}] run scoreboard players set @s magic_cooldown 440
execute unless entity @a[gamemode=survival,distance=..2,scores={magic_lb_dummy=0}] if entity @s[distance=..30] positioned ^ ^ ^1 if block ^ ^ ^ air run function magic:magics/sub/poison/recrusion
execute as @s run scoreboard players set @s magic_lb_dummy 0