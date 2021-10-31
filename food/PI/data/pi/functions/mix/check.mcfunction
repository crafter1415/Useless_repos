advancement revoke @s only pi:talk
scoreboard players reset @s pi.talk
tag @e[type=item,tag=pi.milk,distance=..5,sort=nearest,limit=1] add pi.target
execute if predicate pi:shovel at @s as @e[type=item,tag=pi.target] at @s align xyz positioned ~0.5 ~ ~0.5 run function pi:mix/mix
tag @e[type=item,tag=pi.target] remove pi.target
