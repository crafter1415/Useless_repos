execute as @e[type=item,tag=,nbt={Item:{id:"minecraft:milk_bucket"}}] at @s if block ~ ~ ~ powder_snow_cauldron[level=3] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=villager,tag=pi.mix,distance=..0.5] run function pi:tick3/put
execute if entity @e[type=item,tag=,nbt={Item:{id:"minecraft:milk_bucket"}}] run schedule function pi:tick3/test 1t
