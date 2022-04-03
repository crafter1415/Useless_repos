#> fb:tick
# 魅せぬコマに向けて作成した [技術的に行ってはいけない実装] を集めた関数。
# 毎tick実行。

# 乱数取得用
## エンティティの召喚はコストが高いため、基本的に線形合同法あるいはキャリー付き乗算を使うべき。
## 配布データパックなので汎用的なタグは使わずにprefixをつけるべき。
summon marker ~ ~ ~ {Tags:[tmp]}
## エンティティ種類による絞り込みを行わないと存在するエンティティの数 n に対して O(n) の処理が入る。避けるべき。
## この実装は MCID random がいた場合にバグが発生する恐れがあるのでスコアマーカーを使用するべき。
execute store result score random fb run data get entity @e[tag=tmp,limit=1] UUID[0]
kill @e[tag=tmp]

## 同様に、MCID random_base がいた場合にバグが発生する恐れがあるので(ry
## ここは定数としてload時に一度だけ読み込むべき。
scoreboard players set random_base fb 5
scoreboard players operation random fb %= random_base fb

## ここは毎回全員に対してスコアチェックが入るので関数を分けて実装するのが最適。
## @e にする意味がない。type=player 指定を行うか、@a で実行するべき。
execute as @e if data entity @s {Inventory:[{Slot:100b,tag:{tag:"fb:fb"}}]} if score @s walk matches 1.. run scoreboard players add @s fb 1
execute as @e if score @s fb matches 5 at @s run placefeature patch_grass
## 乱数は使用するごとに更新するべき。今回の場合は、一つのファイルで実装しようとするのが間違い。
execute as @e if score @s fb matches 5 if score random fb matches 0 at @s run placefeature flower_default
execute as @e if score @s fb matches 5 run scoreboard players set @s fb 0

## ここは個人的な意見だが、0代入よりならresetの方が良い気がする。
scoreboard players set @a walk 0
