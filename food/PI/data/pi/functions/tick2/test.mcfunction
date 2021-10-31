execute as @e[type=#pi:mob,tag=pi.pied] at @s run function pi:tick2/base
execute if entity @e[type=#pi:mob,tag=pi.pied] run schedule function pi:tick2/test 1t
