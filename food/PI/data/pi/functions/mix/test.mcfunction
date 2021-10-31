execute as @e[type=villager,tag=pi.mix] at @s unless block ~ ~ ~ powder_snow_cauldron[level=3] run function pi:mix/break
execute as @e[type=item,tag=pi.snow] at @s if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:bowl",Count:1b}}] run function pi:mix/serve
execute if entity @e[type=item,tag=pi.item] run schedule function pi:mix/test 1t
