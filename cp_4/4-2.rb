# RGBカラー変換プログラム
# 10進数を16進数に変換するto_hexメソッドと、１６進数を10進数に変換するto_inisメソッドの２つを定義する
# to_hexメソッドは３つの整数を受け取り、それぞれを１６進ルウに変換した文字列を返す。文字列の先頭には＃をつける
# to_inisメソッドはRGBカラーを表す１６進数の文字列を受け取り、RGBのそれぞれを１０真数の整数に変換した値を配列として返す

# 配列
# 配列とは複数のデータをまとめて格納できるオブジェクトのこと。
# 空の配列を作る[]
# 3つの要素が格納された配列を作る[要素１,要素２,要素３]
# 配列はarrayクラスのオブジェクトになってます
puts [].class
 a = [1, 2, 3]
puts a
a = ['apple', 'melon', 'orange']
puts a

 a = [1, 2, 3]
# 一つ目の要素を取得
puts a[0]
# 二つ目の要素を取得
puts a[1]
# 三つ目の要素を取得
puts a[2]

# sizeメソッドを使うと配列の長さを取得できます
 a = [1, 2, 3]
 puts a.size
 puts a.length

# 要素の変更・追加・削除
# 配列[供え字] = 新しい値
a = [1, 2, 3]
a[1] = 20
puts a

a = [1, 2, 3]
a[4] = 50
puts a

a = []
a << 1
a << 2
a << 3
puts a

# 配列内の特定の位置にある要素を削除したい場合はdelete_atメソッドを使う
a = [1, 2, 3]
a.delete_at(2)
puts a

# 存在しない添え字を指定するとnilが返る
a.delete_at(100)
puts a

# 配列を使った多重代入
a,b = 1,2
puts a
puts b

# 配列を使って多重代入する
a,b = [1,2]
puts a
puts b

# 右辺の数が少ない場合はnilが入る
c,d = [10]
puts c
puts d

# 右辺の数が多い場合ははみ出した値が切り分けられる
e,f = [100,200,300]
puts e
puts f

# divmodは商と余りを配列で返す
puts 14.divmod(3)

# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]},余り=#{quo_rem[1]}"

# 多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
puts "商=#{quotient},余り=#{remainder}"
