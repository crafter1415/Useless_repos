playsound minecraft:entity.generic.swim block @a[distance=..23] ~ ~ ~ 0.4 0.5 0
particle minecraft:splash ~ ~0.9 ~ 0.2 0.1 0.2 0 10 force
scoreboard players add @s pi.throw2 1
execute if entity @s[scores={pi.throw2=10..}] run function pi:mix/mix_done
