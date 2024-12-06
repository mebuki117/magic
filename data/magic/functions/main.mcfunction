execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:1}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 20.. run function magic:magics/heal
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:2}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 50.. run function magic:magics/recon
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:3}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 30.. run function magic:magics/thunder
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:4}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 5.. run function magic:magics/mine
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:5}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 25.. run function magic:magics/poison
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:6}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 40.. run function magic:magics/twister
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:7}}]}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches 150.. run function magic:magics/explosion

# execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] if score @s magic_cooldown matches ..40 if score @s magic_totalxp matches ..19 run title @s actionbar "§4経験値が足りません"
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] if score @s magic_cooldown matches ..40 run title @s actionbar {"text":"現在の経験値: ","color":"white","extra":[{"score":{"name":"@s","objective":"magic_totalxp"}}]}

# scoreboard action
execute as @a run scoreboard players set @s magic_acbar_temp 0
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run scoreboard players set @s magic_acbar_temp 1

execute as @a run scoreboard players set @s magic_wpstick 0

# experience scoreboard reset
execute as @a run scoreboard players set @s magic_totalxp 0
execute as @a run scoreboard players set @s magic_6 6
execute as @a run scoreboard players set @s magic_10 10
execute as @a run scoreboard players set @s magic_2_5 25
execute as @a run scoreboard players set @s magic_40_5 405
execute as @a run scoreboard players set @s magic_360 360
execute as @a run scoreboard players set @s magic_4_5 45
execute as @a run scoreboard players set @s magic_162_5 1625
execute as @a run scoreboard players set @s magic_2220 2220

# experience calc
execute as @a store result score @s magic_currentlv run xp query @s levels
execute as @a store result score @s magic_currentxp run xp query @s points

execute as @a if score @s magic_currentlv matches 0 run scoreboard players operation @s magic_totalxp = @s magic_currentxp

# level 0-16
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_totalxp = @s magic_currentlv
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_level2 = @s magic_currentlv
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_level2 *= @s magic_currentlv
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_6 *= @s magic_currentlv
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_level2 += @s magic_6
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_totalxp += @s magic_level2
execute as @a if score @s magic_currentlv matches 1..16 run scoreboard players operation @s magic_totalxp += @s magic_currentxp

# level 17-31
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_level2 = @s magic_currentlv
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_level2 *= @s magic_level2
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_level2 *= @s magic_2_5
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_level2 /= @s magic_10
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_40_5 *= @s magic_currentlv
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_40_5 /= @s magic_10
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_level2 -= @s magic_40_5
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_totalxp = @s magic_level2
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_totalxp += @s magic_360
execute as @a if score @s magic_currentlv matches 17..31 run scoreboard players operation @s magic_totalxp += @s magic_currentxp

# level 32+
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_level2 = @s magic_currentlv
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_level2 *= @s magic_level2
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_level2 *= @s magic_4_5
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_level2 /= @s magic_10
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_162_5 *= @s magic_currentlv
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_162_5 /= @s magic_10
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_level2 -= @s magic_162_5
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_totalxp = @s magic_level2
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_totalxp += @s magic_2220
execute as @a if score @s magic_currentlv matches 32.. run scoreboard players operation @s magic_totalxp += @s magic_currentxp