# 範囲
# rubyには「１から５まで」「文字aから文字eまで」のように値の範囲を表すオブジェクトがある。
# これを範囲オブジェクトという。
# 範囲オブジェクトは次のように...または...を使って作成する。

# 最初の値..最後の値（最後の値を含む）
# 最初の値...最後の値(最後の値を含まない)

# 範囲のオブジェクトはRangeオブジェクトです。
puts (1..5).class

# ..を使うと５が含まれる(1以上5以下)
range = 1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(3)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

# ...を使うと５が含まれる(1以上5未満)
range = 1...5
puts range.include?(0)
puts range.include?(1)
puts range.include?(3)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)
# 直接include?のようなメソッドを呼び出すときは範囲オブジェクトを()で囲む必要があるので注意する。


# 配列や文字列の一部を抜き出す
# 配列に対して添字の代わりに範囲オブジェクトを渡すと、指定した範囲の要素を取得することができる。
a = [1,2,3,4,5]
# 2番目から4番目までの要素を取得する
puts a[1..3]

# 文字列に対しても同じような操作ができる
a = 'abcdef'
# 2文字目から4文字目までを抜き出す
puts a[1..3]

# n以上m以下、n以上m未満の判定をする
# n以上m以下、n以上m未満の判定をしたい場合は、<や>=のような記号（不等号）を使うよりも範囲オブジェクトを使った方がシンプルに書ける。

# 不等号を使う場合
def liquid?(temperature)
  # 0度以上100度未満であれば液体、と判断したい
  0 <= temperature && temperature < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

# 範囲オブジェクトを使う場合
def liquid?(temperature)
  (0..100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

# case文で使う
# 範囲オブジェクトはcase文と組み合わせることもできる
def charge(age)
  case age
  # 0歳から5歳までの場合
  when 0..5
    0
  # 6歳から12歳までの場合
  when 6..12
    300
  # 12歳から18歳までの場合
  when 12..18
    600
  # それ以外の場合
  else
    1000
  end
end

puts charge(3)
puts charge(12)
puts charge(16)
puts charge(18)
puts charge(33)

# 値が連続する配列を作成する
# 範囲オブジェクトに対してto_aメソッドを呼び出すと、値が連続配列を作成することできる
puts (1..5).to_a
puts (1...5).to_a
puts ('a'..'d').to_a
puts ('a'...'d').to_a
puts ('bad'..'bag').to_a
puts ('bad'...'bag').to_a
# []の中に※と範囲オブジェクトを書いても同じように配列を作ることができる
puts [*1..5]
puts [*1...5]

# 繰り返し処理を行う
# 範囲オブジェクを配列に変換すれば、配列として繰り返し処理を行うことができる
numbers = (1..4).to_a
sum = 0
numbers.each{ |n| sum += n }
puts sum

# 配列にしなくても可能
sum = 0
(1..4).each{ |n| sum += n }
puts sum

# stepメソッドを呼び出すと値を増やす間隔を指定できる
numbers = []
# 1から10まで2回ごとに繰り返し処理を行う
(1..10).step(2){ |n| numbers << n }
puts numbers
