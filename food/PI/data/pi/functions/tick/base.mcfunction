scoreboard players add @s pi.throw 1
execute if data entity @s {ArmorItems:[{},{},{},{tag:{CustomModelData:2}}],OnGround:1b} at @s run function pi:tick/onground
execute if data entity @s {ArmorItems:[{},{},{},{tag:{CustomModelData:2}}]} if score @s pi.throw matches 2.. positioned ~ ~-1 ~ as @e[type=#pi:mob,distance=..1] at @s run function pi:tick/entity_hit
execute if data entity @s {ArmorItems:[{},{},{},{tag:{CustomModelData:4}}]} if score @s pi.throw matches 105.. at @s run kill @s
execute if data entity @s {ArmorItems:[{},{},{},{tag:{type:"cream"}}]} if score @s pi.throw matches 100.. at @s run kill @s
execute if data entity @s {ArmorItems:[{},{},{},{tag:{type:"cream"}}]} run effect give @e[type=#pi:mob,distance=..1] slowness 1 1
