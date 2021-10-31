scoreboard objectives add pi.throw used:snowball
execute unless score $Current pi.throw = $Current pi.throw run function pi:random/init

