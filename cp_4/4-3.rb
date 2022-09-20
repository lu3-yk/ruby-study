# ブロックはメソッドの引数として渡すことができる処理のかたまりです
# ブロック内で記述した処理は必ず必要に応じてメソッドから呼び出されます

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum += n
end

puts sum

# まず.numbers.eachとなっている点に注目する。配列のeach文を利用していることを意味してる。
# |n|のnはブロックパラメーターと呼ばれるもので、eachメソッドから渡された配列の要素が入る。
# 具体的に言うとnには1,2,3,4の順番で渡される。

# 配列の要素を削除する条件を自由に指定する
# 配列には指定した値に一致する要素を削除するdeleteというメソッドがある
a = [1,2,3,1,2,3]
# 配列から値の２の要素を削除する
a.delete(2)
puts a

# しかし完全一致する要素しか削除できない
# deleteメソッドの代わりにdelete_ifメソッドを使う
a = [1,2,3,4,5,6]
# 配列から値が奇数の要素を削除する
a.delete_if do |n|
 n.odd?
end
puts a
# delete_ifメソッドは「配列の要素を順番に取り出すこと」と「ブロックの戻り値が真であれば要素を削除すること」という共通処理を提供する
# このようにrubyでは「要件を問わず共通する処理」はメソッド自身に「要件によって異なる処理」はブロックにそれぞれ分担させて１つの処理を完成させるメソッドが数多くある

# ブロックパラメータとブロック内の変数
# ブロックパラメーターの名前はなんでもいい
# numbers = [1,2,3,4]
# sum = 0

# numbers.each do |i|
#   sum += number
# end

# numbers.each do |number|
#   sum += number
# end

# numbers.each do |element|
#   sum += element
# end

# 条件演算子（三項演算子）
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n* 10 : n
  sum += sum_value
end
puts sum

# do...endと{}
# ここまではブロックには必ず改行を入れて書いてきた。しかし、rubyの文法上、改行を入れなくてもブロックは動作する
numbers = [1,2,3,4]
sum = 0
# みにくいがブロックをあえて改行せずに書くとこうなる
numbers.each do |n| sum += n end


# endを使わずに{}を使う方法もある
numbers = [1,2,3,4]
sum = 0
# do...endの代わりに{}を使う
numbers.each{ |n| sum += n }
sum

