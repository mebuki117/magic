execute as @a[scores={magic_rec_cd=1..}] run scoreboard players remove @s magic_rec_cd 1
execute as @a[scores={magic_rec_cd=1..}] run scoreboard players operation @s magic_rec_cd_s = @s magic_rec_cd
execute as @a[scores={magic_rec_cd_s=1..}] run scoreboard players operation @s magic_rec_cd_s /= @s magic_rec_cd_d