# ブロックを使う配列のメソッド
# mapメソッドは各要素に対してブロックを評価した結果を新しい配列にして返します
# mapメソッドを使うとブロックの戻り値の配列の要素となる新しい配列が作成されるためmapメソッドの戻り値をそのまま新しい変数に入れることができる
numbers = [1,2,3,4,5]
# ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map{ |n| n*10 }
puts new_numbers

# selectメソッド（エイリアスメソッドはfind_all）は各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返すメソッドです
numbers = [1,2,3,4,5,6]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select{ |n| n.even?}
puts even_numbers

# rejectメソッドはselectメソッドの反対で、ブロックの戻り値が真になった要素を除外した配列を返します
# 言い換えるとブロックの戻り値が偽である要素を集めるメソッドです
numbers = [1,2,3,4,5,6]
# 3の倍数を除外する multiolesマルチプルとは倍数のという意味
non_multioles_of_three = numbers.reject{ |n| n % 3 == 0 }
puts non_multioles_of_three

# findメソッド（エイリアスメソッドはdetect）はブロックの戻り値が真になった最初の要素を返す
numbers = [1,2,3,4]
even_numbers = numbers.find{|n| n.even? }
puts even_numbers

# sumメソッドは要素の合計を求めるメソッドです
numbers = [1,2,3,4]
puts numbers.sum

# ブロックを与えると、ブロックパラメーターに各要素が順番に渡され、ブロックの戻り値が合計される
numbers = [1,2,3,4]
# 各要素を２倍しながら合計する
puts numbers.sum{ |n| n*2}

# 初期値は０ですが、引数で０以外の初期値を指定することも可能
numbers = [1,2,3,4,5]
# 初期値を５に指定する（5+1+2+3+4+5）
puts numbers.sum(5)

chars = ['a','b','c']
# 文字列を連結する
puts chars.sum('')

# joinとsum
# 配列の要素を連結して１つの文字列にするときはjoinメソッドを使うこともできる
chars = ['a','b','c']
puts chars.join

chars = ['a','b','c']
# 区切り文字をハイフンにして各要素を連結する
puts chars.join('-')

chars = ['a','2','c']
# 数値が含まれてても連結可能
puts chars.join


