# さまざまな繰り返し処理
# timesメソッド
# 配列を使わずに、単純にn回処理を繰り返したいという場合はintegerクラスのtimesメソッドを使うと便利。
sum = 0
# 処理を５回繰り返す。nには0,1,2,3,4が入る
5.times{ |n| sum += 1 }
puts sum

# uptoメソッドとdowntoメソッド
# nからmまで数値を１つずつ増やしながら何か処理したい場合はintegerクラスのuptoメソッドを使う
a = []
10.upto(14){ |n| a << n }
puts a

# 逆に数値を減らしていきたいときは
a = []
14.downto(10){ |n| a << n }
puts a

# stepメソッド
# 1,3,5,7ようにnからmまで数値をx個ずつ増やしながら何か処理したい場合は、Numericクラスのstepメソッドを使う
# 開始値.step(上限値、一度に増減する大きさ)
# 例えば、1から１０まで２つずつ値を増やしながら処理をしたい場合は次のようなコードになる
a = []
1.step(10,2){ |n| a << n }
puts a

# 逆に減らす場合は
a = []
10.step(1,-2){ |n| a << n }
puts a

# while文とuntil文
# オブジェクトのメソッドとブロックを組み合わせて処理を繰り返し実行してきましたが、ruby繰り返し処理ようの構文も用意されている。
# その一つがwhile文。while文は指定した条件が真の間、処理を繰り返す。
# while 条件式
#   繰り返したい処理
# end
# 例えば以下は配列の要素数が5つになるまで値を追加するwhile文
a = []
while a.size < 5
  a << 1
end
puts a
# 条件式の後ろにdoを入れると１行で書くこともできます。
a = []
while a.size < 5 do a << 1 end
puts a

# しかし、１行で書くのであれば修飾子としてwhile文を後ろに置いた方がスッキリかける
a = []
a << 1 while a.size < 5
puts a

# どんな条件式でも最低１回は実行したいという場合はbegin...endで囲んでからwhileをかく
a = []
while false
  # このコードは常に条件が気になるので実行されない
  a << 1
end

puts a

# begin ... endで囲むとどんな条件式でも最低１回は実行される
  begin
    a << 2
  end
  puts a
  
# for文
# 配列やハッシュはfor文で繰り返し処理することもできる
# for 変数 in 配列やハッシュ
#   繰り返し処理
# end  
# 例えば次は配列の中身を順番に加算していくコード
numbers = [1,2,3,4]
sum = 0
for n in numbers
  sum += n
end
puts sum

#loopメソッド
# あえて無限ループを作りたい、という場合はwhile文を使って次のようなコードが書ける
# while true
#   無限ループ用の処理
# end
# while true
#   n = numbers.sample
#   puts n
#   break if n == 5
# end


