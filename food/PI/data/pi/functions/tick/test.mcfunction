execute as @e[type=armor_stand,tag=pi.pie] at @s run function pi:tick/base
execute if entity @e[type=armor_stand,tag=pi.pie] run schedule function pi:tick/test 1t
