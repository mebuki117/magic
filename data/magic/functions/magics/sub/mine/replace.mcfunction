# fill
execute positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^3 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^5 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^6 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^7 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^8 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^9 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^10 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^11 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^12 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^13 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^14 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
execute positioned ^ ^ ^15 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
# execute positioned ^ ^ ^16 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
# execute positioned ^ ^ ^17 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
# execute positioned ^ ^ ^18 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
# execute positioned ^ ^ ^19 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group
# execute positioned ^ ^ ^20 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:replace_group

# damage
execute as @s run scoreboard players set @s magic_temp 1
execute positioned ^ ^ ^1 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^2 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^3 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^4 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^5 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^6 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^7 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^8 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^9 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^10 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^11 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^12 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^13 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^14 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute positioned ^ ^ ^15 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
# execute positioned ^ ^ ^16 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
# execute positioned ^ ^ ^17 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
# execute positioned ^ ^ ^18 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
# execute positioned ^ ^ ^19 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
# execute positioned ^ ^ ^20 as @a at @s[gamemode=survival,distance=..2,scores={magic_temp=0}] run effect give @s minecraft:instant_damage 1 0
execute as @s run scoreboard players set @s magic_temp 0

# effect
# execute positioned ^ ^ ^1 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^2 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^3 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^4 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^5 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^6 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^7 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^8 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^9 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^10 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^11 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^12 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^13 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^14 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
execute positioned ^ ^ ^15 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^16 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^17 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^18 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^19 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1
# execute positioned ^ ^ ^20 run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 1

# playsound
execute positioned ^ ^ ^1 run playsound minecraft:entity.wither.break_block hostile @a