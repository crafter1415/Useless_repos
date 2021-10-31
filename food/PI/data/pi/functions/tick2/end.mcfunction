tag @s remove pi.pied
data modify storage pi: buf set from entity @s ArmorItems[3].tag.before
data modify entity @s ArmorItems[3] set from storage pi: buf
