#> fb:load
# 魅せぬコマに向けて作成した [技術的に行ってはいけない実装] を集めた関数。
# 初期化用。

## 名前が短く競合の可能性がある。
scoreboard objectives add fb dummy

## 名前が短く競合の可能性がある。
## 配布データパックとする時点でprefixを設けるべき。
## ここはscoreboardではなくadvancementで実装するべき。
## walk_one_cm だと走ったとき、スニークで歩いたときなどが検出できない。
scoreboard objectives add walk custom:walk_one_cm
