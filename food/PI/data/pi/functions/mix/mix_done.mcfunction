kill @e[type=villager,tag=pi.mix,distance=..0.5]
data merge entity @s {Item:{id:"powder_snow_bucket",Count:1b}}
tag @s remove pi.milk
tag @s add pi.snow
scoreboard players set @s pi.throw2 4
setblock ~ ~ ~ water_cauldron[level=2]
schedule function pi:mix/test 1t
