##############################
### キャリー付き乗算乱数
##############################

###キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players operation $Current pi.throw *= $Multiplier pi.throw
scoreboard players operation $Current pi.throw += $Carry pi.throw
scoreboard players operation $Carry pi.throw = $Current pi.throw
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players operation $Current pi.throw %= $Base pi.throw
## c = (ax + c) / b
scoreboard players operation $Carry pi.throw /= $Base pi.throw

### 値を返す
scoreboard players get $Current pi.throw