function magic:remove_xp

scoreboard players set @s magic_cooldown 440
scoreboard players set @s magic_rec_cd 110

execute as @s at @s run summon minecraft:villager ~ ~ ~ {Invulnerable:true,NoAI:true,Silent:true,Team:"magic_recon"}
execute as @s at @s run tp @e[limit=1,sort=nearest,type=minecraft:villager,team=magic_recon] ~ ~ ~ ~ ~
execute as @s at @s run gamemode spectator @s
execute as @s at @s run scoreboard players set @s magic_rec_dummy 1

schedule function magic:magics/sub/2/reset_gamemode 5s append