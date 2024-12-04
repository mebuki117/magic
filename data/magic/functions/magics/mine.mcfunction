execute as @s run xp add @s -5 points

scoreboard players set @s magic_cooldown 440

execute as @s at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 50

execute as @s at @s anchored eyes run function magic:magics/sub/mine/replace