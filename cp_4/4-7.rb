# 配列についてもっと詳しく
# 添え字を２つ使うと、添字の位置と取得する長さを指定することができる。この場合、配列が返ってくる。
# 配列[位置、取得する長さ]
a = [1, 2, 3, 4, 5]
puts a[1, 3]

# values_atメソッドを使うと、取得したい要素の添え字を複数指定できる
puts a.values_at(0, 2, 4)

# 「配列の長さ−１」を指定すれば、最後の要素を取得できる
a = [1,2,3]
# 最後の要素を取得する
puts a[a.size - 1]
# 最後から２番目の要素を取得する
puts a[-2]
# 最後から２番目の要素から２つの要素を取得する
puts a[-2, 2]

# 配列にはlastメソッドというメソッドがある。配列の最後の要素取得できる。引数に０以上の数値を渡すと、
# 最後のn個の要素を取得できる
a = [1,2,3]
puts a.last
puts a.last(2)
# 逆にfirstもある
puts a.first

# さまざまな要素の変更方法
# 値を変更する場合も負の添え字が使える。
a = [1,2,3]
a[-3] = -10
puts a

# 開始位置と長さを指定して要素を置き換えることもできる。
a = [1,2,3,4,5]
a[1,3] = 100
puts a

# 指定した値に一致する要素を削除したい場合はdeleteメソッドを使う。
a = [1,2,3,4,5]
# 値が２である要素を削除する
a.delete(2)
puts a

# 配列の連結
# 2つの配列を連結したい場合はconcatメソッドか＋演算子を使う。（concatは連結という意味）
a = [1]
b = [2,3]
puts a.concat(b)

# aは変更される（破壊的）
puts a
# bは変更されない
puts b

# 一方、＋を使うともとの配列を変更せずに、新しい配列を作成する。
a = [1]
b = [2,3]
puts a+b

# aもbも変更されない
puts a
puts b

