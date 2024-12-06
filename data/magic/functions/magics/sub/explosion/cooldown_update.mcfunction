execute as @a[scores={magic_exp_cd=1..}] run scoreboard players remove @s magic_exp_cd 1
execute as @a[scores={magic_exp_cd=1..}] run scoreboard players operation @s magic_exp_cd_s = @s magic_exp_cd
execute as @a[scores={magic_exp_cd_s=1..}] run scoreboard players operation @s magic_exp_cd_s /= @s magic_exp_cd_d