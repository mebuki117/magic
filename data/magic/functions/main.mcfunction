execute as @a if entity @s[gamemode=survival,scores={magic_wpstick=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{CustomModelData:1}}]}] if score @s magic_cooldown matches ..40 run function magic:magics/1

# scoreboard action
scoreboard players set @a magic_wpstick 0
