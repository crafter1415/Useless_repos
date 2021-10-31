tag @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:bowl",Count:1b}},limit=1] add pi.target
data merge entity @e[type=item,tag=pi.target,limit=1] {Item:{id:"snowball",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"パイ","bold":true,"italic":false,"color":"aqua"}'}}},PickupDelay:0}
playsound minecraft:item.bottle.fill block @a[distance=..23] ~ ~ ~ 0.7 1 0
scoreboard players remove @s pi.throw2 1
execute if entity @s[scores={pi.throw2=..0}] run data merge entity @s {Item:{id:"bucket",Count:1b},PickupDelay:0}
execute if entity @s[scores={pi.throw2=..0}] run tag @s remove pi.item
execute if entity @s[scores={pi.throw2=..0}] run tag @s remove pi.snow
tag @e[type=item,tag=pi.target] remove pi.target
