#define score_holder $Current

### 乗数設定
scoreboard players set $Multiplier pi.throw 31743
### 除数設定
scoreboard players set $Base pi.throw 65536

### 現在値設定
scoreboard players set $Current pi.throw 14159
### キャリー設定
scoreboard players set $Carry pi.throw 26535

scoreboard players set $1000 pi.throw 1000
scoreboard players set $300 pi.throw 300
scoreboard players set $20 pi.throw 20
scoreboard players set $16 pi.throw 16

scoreboard objectives add pi.throw2 dropped:milk_bucket
scoreboard objectives add pi.talk custom:talked_to_villager
