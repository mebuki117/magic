execute as @a[scores={magic_cooldown=1..}] run scoreboard players remove @s magic_cooldown 1
execute as @a[scores={magic_cooldown=1..}] run scoreboard players operation @s magic_cd_stage = @s magic_cooldown
execute as @a[scores={magic_cd_stage=1..}] run scoreboard players operation @s magic_cd_stage /= @s magic_cd_dummy