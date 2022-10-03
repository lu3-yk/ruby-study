# ブロックについてもっと詳しく
# 添え字つきの繰り返し処理
# Rubyではeachメソッドを使うのが繰り返し処理の基本。しかし。eachメソッドでは何番目の要素を繰り返しているのか、ブロック内で判別できない。
# 繰り返し処理をしつつ、処理している要素もよえじも取得したい。そんな時はeach_with_indexを使う。
# each_with_indexを使うと、ブロックパラメーターの第二パラメータに添え字を渡してくれる。
fruits = ['apple','orange','melon']
# ブロックパラメータのiには0,1,3...と要素の添え字が入っている
fruits.each_with_index{ |fruit, i| p '#{i}: #{fruit}' }

# 添え字を０以外の数値から開始させる
[5, 10, 15].each.with_index(1) do |n, i|
  p [n, i]
end

# with_indexメソッドを使った添え字つきの繰り返し処理
# each_with_indexメソッドだと、eachメソッドの代わりにしか使えない。
# 例えばmapメソッドで繰り返し処理をしつつ、添字も同時に取得したいときはmapメソッドとwith_indexメソッドを組み合わせて使う。
# mapとして処理しつつ、添字も受け取る
fruits = ['apple','orange','melon']
puts fruits.map.each_with_index{ |fruit, i| puts '#{i}: #{fruit}' }

# 配列がブロックパラメータに渡される場合
# 配列の配列に対して繰り返し処理を実行すると、ブロックパラメータに配列が渡ってくる。例えば、縦の長さと横の長さを配列に格納し、それを複数用意した配列があったとする。
dimensions = [
  #縦、横
  [10,20],
  [30,40],
  [50,60],
  ]
  # これをeachメソッドなどで繰り返し処理をすると配列がブロックパラメータにわたってくる。
areas =[]
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length*width
end
puts areas
# 縦と横の値を別々に受け取ることができ、よりシンプルに書くことができる
areas =[]
dimensions.each do |length,width|
  areas << length*width
end
puts areas

# 番号パラメータ
# ブロックパラメータとして番号指定パラメータ（numbered parameter）が使えるようになった。
# 番号指定パラメータを使うと、明示的にブロックパラメータを指定する代わりにパラメータの順番に応じて＿１から＿９までの番号を使うことができる
puts ["1","20","300"].map{ |s| s.rjust(3,'0')}

# ブロックローカル変数
# ブロックパラメータを；で区切り、続けて変数を宣言すると、ブロック内でのみ有効な独立したローカル変数を宣言することができる
numbers = [1,2,3,4]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  
  puts sum
end  

puts sum

# do...end と　{}の結合度の違い
# ブロックではdo...endや{}で書くことができる。
# 基本的にどちらを使っても結果は同じだが、do...endより{}の方が結合度が強いという点に注意が非町。
# 例えば、配列のdeleteメソッドにはブロックを渡すことができる。ブロックを渡すと引数が指定した値が見つからない時の戻り値を指定することができる。
a = [1,2,3]

puts a.delete(100)
# ↑nilが返ってくる

a.delete(100) do
  puts 'NG'
end
# ↑NGが返ってくる

# a.delete 100{ "NG" }
# これだとエラーになる。{}の結合度が強いため、a.delete 100ではなく、100{"NG"}と解釈されてしまう。
# なので引数つきのメソッド呼び出しで{}をブロックとして使う場合は、メソッドの引数の()を省略できないことを覚える。
puts a.delete (100){"NG"}

# ブロックは使うメソッドを定義する
