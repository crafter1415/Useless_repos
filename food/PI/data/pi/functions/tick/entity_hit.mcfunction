#define storage pi:
execute anchored eyes positioned ^ ^ ^0 run tag @e[tag=pi.pie,distance=..1,limit=1] add pi.from
data modify entity @s Motion set from entity @e[type=armor_stand,tag=pi.from,limit=1] Motion
execute as @e[type=armor_stand,tag=pi.from,limit=1] at @s run function pi:tick/onground
kill @e[type=armor_stand,tag=pi.from,limit=1]
effect give @s slowness 10 2
effect give @s weakness 10 2
execute unless entity @s[tag=pi.pied] run data modify storage pi: buf set from entity @s ArmorItems[3]
execute unless entity @s[tag=pi.pied] run item replace entity @s armor.head with snowball{CustomModelData:1}
execute unless entity @s[tag=pi.pied] run data modify entity @s ArmorItems[3].tag.before set from storage pi: buf
tag @s add pi.pied
scoreboard players set @s pi.throw 0
schedule function pi:tick2/test 1t
