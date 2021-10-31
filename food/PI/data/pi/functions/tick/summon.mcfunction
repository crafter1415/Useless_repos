
execute store result score $x pi.throw run data get entity @s Motion[0] 2000
execute store result score $z pi.throw run data get entity @s Motion[2] 2000
execute store result score $_ pi.throw run function pi:random/next
scoreboard players operation $_ pi.throw %= $1000 pi.throw
scoreboard players operation $_ pi.throw -= $300 pi.throw
scoreboard players operation $x pi.throw += $_ pi.throw
execute store result score $_ pi.throw run function pi:random/next
scoreboard players operation $_ pi.throw %= $1000 pi.throw
scoreboard players operation $_ pi.throw -= $300 pi.throw
scoreboard players operation $z pi.throw += $_ pi.throw
execute store result score $y pi.throw run function pi:random/next
scoreboard players operation $y pi.throw %= $1000 pi.throw
scoreboard players operation $y pi.throw -= $300 pi.throw
execute store result score $_ pi.throw run function pi:random/next
scoreboard players operation $_ pi.throw %= $16 pi.throw
scoreboard players add $_ pi.throw 1000
summon armor_stand ~ ~ ~ {Tags:["pi.init","pi.pie"],Invisible:1b,ArmorItems:[{},{},{},{id:"snowball",Count:1b,tag:{type:"cream",CustomModelData:1000}}],Small:1b,DisabledSlots:4144959,Motion:[0d,-0.1d,0d]}
execute store result entity @e[type=armor_stand,tag=pi.init,limit=1] Motion[0] double 0.001 run scoreboard players get $x pi.throw
execute store result entity @e[type=armor_stand,tag=pi.init,limit=1] Motion[1] double 0.0005 run scoreboard players get $y pi.throw
execute store result entity @e[type=armor_stand,tag=pi.init,limit=1] Motion[2] double 0.001 run scoreboard players get $z pi.throw
execute store result entity @e[type=armor_stand,tag=pi.init,limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get $_ pi.throw
execute store result score @e[type=armor_stand,tag=pi.init,limit=1] pi.throw run function pi:random/next
scoreboard players operation @e[type=armor_stand,tag=pi.init,limit=1] pi.throw %= $20 pi.throw
tag @e[type=armor_stand,tag=pi.init] remove pi.init
