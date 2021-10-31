
execute as @e[type=player,tag=pi.thrower] at @s anchored eyes run summon armor_stand ^ ^ ^1 {Tags:["pi.init","pi.pie"],ArmorItems:[{},{},{},{id:"snowball",Count:1b,tag:{CustomModelData:2}}],Pose:{Head:[0f,45f,0f]},Invisible:1b,DisabledSlots:4144959,Small:1b}
data modify entity @e[tag=pi.init,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=pi.init,limit=1] Pose.Head[1] set from entity @e[tag=pi.thrower,limit=1] Rotation[0]
kill @s
tag @e[tag=pi.init] remove pi.init
