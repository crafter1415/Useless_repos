kill @s
summon item ~ ~0.7 ~ {Item:{id:"milk_bucket",Count:1b},NoGravity:1b,PickupDelay:32767,Age:-32768,Tags:["pi.item","pi.milk"]}
summon villager ~ ~0.1 ~ {NoAI:1b,Silent:1b,Tags:["pi.mix"],Offers:{},ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
playsound minecraft:block.snow.hit block @a[distance=..23] ~ ~ ~ 1 0.5 0
particle minecraft:dust 1 1 1 0.5 ~ ~1 ~ 0.1 0.1 0.1 0 20 force
