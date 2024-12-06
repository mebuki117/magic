execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:apple"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] run function magic:merge/heal/main
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},distance=..1] run function magic:merge/recon/main
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1] run function magic:merge/thunder/main
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},distance=..1] run function magic:merge/mine/main
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..1] run function magic:merge/poison/main
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:feather"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:3}}},distance=..1] run function magic:merge/twister/main
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},sort=nearest] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..1] run function magic:merge/explosion/main