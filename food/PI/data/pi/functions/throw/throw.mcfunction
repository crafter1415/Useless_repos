
advancement revoke @s only pi:throw
scoreboard players reset @s pi.throw

execute at @s anchored eyes positioned ^ ^ ^0 if entity @e[type=snowball,distance=..1,nbt={Item:{tag:{CustomModelData:1}}}] run schedule function pi:tick/test 1t
tag @s add pi.thrower
execute at @s anchored eyes positioned ^ ^ ^0 as @e[type=snowball,distance=..1] if data entity @s {Item:{tag:{CustomModelData:1}}} at @s run function pi:throw/throw_pie
tag @s remove pi.thrower
