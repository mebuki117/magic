execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:1}}]}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches 20.. run function magic:magics/heal
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:2}}]}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches 50.. run function magic:magics/recon
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:3}}]}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches 30.. run function magic:magics/thunder
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:4}}]}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches 30.. run function magic:magics/mine
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:5}}]}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches 20.. run function magic:magics/poison
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:6}}]}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches 20.. run function magic:magics/twister

execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] if score @s magic_cooldown matches ..40 if score @s magic_playerxp matches ..19 run title @s actionbar "§4経験値が足りません"
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] if score @s magic_cooldown matches ..40 run title @s actionbar {"text":"現在の経験値: ","color":"white","extra":[{"score":{"name":"@s","objective":"magic_playerxp"}}]}



# scoreboard action
execute as @a run scoreboard players set @s magic_acbar_temp 0
execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run scoreboard players set @s magic_acbar_temp 1

scoreboard players set @a magic_wpstick 0
