execute as @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b,tag:{CustomModelData:1}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:apple"}},limit=1,sort=nearest] store result score @s magic_itemcount run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:apple"}},limit=1,sort=nearest] run scoreboard players remove @s magic_itemcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:apple"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s magic_itemcount

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},limit=1,sort=nearest] store result score @s magic_itemcount run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},limit=1,sort=nearest] run scoreboard players remove @s magic_itemcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s magic_itemcount

execute as @e[type=item,nbt={Item:{id:"minecraft:sugar"}},limit=1,sort=nearest] store result score @s magic_itemcount run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar"}},limit=1,sort=nearest] run scoreboard players remove @s magic_itemcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s magic_itemcount