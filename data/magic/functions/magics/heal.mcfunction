function magic:remove_xp

scoreboard players set @s magic_cooldown 440

execute as @s at @s run effect give @s minecraft:regeneration 10 1
execute as @s at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0 20
execute as @s at @s run playsound minecraft:entity.player.levelup master @s