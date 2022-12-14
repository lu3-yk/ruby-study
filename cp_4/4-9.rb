# 範囲（Range）について
# 終端や始端を持たない範囲オブジェクト
# 範囲式では終端を持たない範囲オブジェクト（endless range）を定義することができる

# １０以上を表す範囲オブジェクト
(10..)

# 終端を省略する代わりにnillを指定しても同じ
10..nil

# 10以下を表す範囲オブジェクト
(..10)
nil..10

# 終端や始端を省略した範囲オブジェクトを使うと以下のようなコードを使うことができる
numbers = [10,20,30,40,50]
puts numbers[2..]
puts numbers[..1]