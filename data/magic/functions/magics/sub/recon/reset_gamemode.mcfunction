execute as @a[scores={magic_rec_cd=1}] if score @s magic_rec_dummy matches 1 run gamemode survival @s
execute as @a[scores={magic_rec_cd=1}] if score @s magic_rec_dummy matches 1 run tp @s @e[limit=1,sort=arbitrary,type=minecraft:villager,team=magic_recon]
execute as @a[scores={magic_rec_cd=1}] if score @s magic_rec_dummy matches 1 run effect give @e[limit=1,sort=arbitrary,type=minecraft:villager,team=magic_recon] minecraft:invisibility 100 0 true
execute as @a[scores={magic_rec_cd=1}] if score @s magic_rec_dummy matches 1 run tp @e[limit=1,sort=arbitrary,type=minecraft:villager,team=magic_recon] ~ -2 ~
execute as @a[scores={magic_rec_cd=1}] if score @s magic_rec_dummy matches 1 run kill @e[limit=1,sort=arbitrary,type=minecraft:villager,team=magic_recon]
execute as @a[scores={magic_rec_cd=1}] if score @s magic_rec_dummy matches 1 run scoreboard players set @s magic_rec_dummy 0