execute as @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"雷の魔法書","color":"gold","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"唱えたとき:","color":"gray","bold":false,"italic":false}','{"text":" 視点の最大30ブロック先のプレイヤーに対して雷を落とす","color":"green","bold":false,"italic":false}','{"text":" "}','{"text":"経験値コスト:","color":"gray","bold":false,"italic":false}','{"text":" 30","color":"green","bold":false,"italic":false}']},CustomModelData:3}}}
execute as @s at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 200
execute as @s at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~

execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] run scoreboard players set @s magic_itemcount 0
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] store result score @s magic_itemcount run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] run scoreboard players remove @s magic_itemcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s magic_itemcount

execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1,limit=1,sort=nearest] run scoreboard players set @s magic_itemcount 0
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1,limit=1,sort=nearest] store result score @s magic_itemcount run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1,limit=1,sort=nearest] run scoreboard players remove @s magic_itemcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1,limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s magic_itemcount

execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1,limit=1,sort=nearest] run scoreboard players set @s magic_itemcount 0
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1,limit=1,sort=nearest] store result score @s magic_itemcount run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1,limit=1,sort=nearest] run scoreboard players remove @s magic_itemcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1,limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s magic_itemcount