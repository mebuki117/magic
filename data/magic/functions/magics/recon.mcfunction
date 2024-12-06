execute as @s run xp add @s -50 points

execute as @a run scoreboard players set @s magic_cooldown 440
execute as @a run scoreboard players set @s magic_rec_cd 66

execute as @s at @s run summon minecraft:villager ~ ~ ~ {Invulnerable:true,NoAI:true,Silent:true,Team:"magic_recon"}
execute as @s at @s run tp @e[limit=1,sort=nearest,type=minecraft:villager,team=magic_recon] ~ ~ ~ ~ ~
execute as @s at @s run gamemode spectator @s
execute as @s at @s run particle minecraft:poof ~ ~ ~ 1 1 1 0 20
execute as @s at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 50
execute as @s at @s run playsound minecraft:entity.wither.spawn hostile @a
execute as @s at @s run scoreboard players set @s magic_rec_dummy 1