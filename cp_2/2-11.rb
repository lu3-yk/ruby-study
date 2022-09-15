#メソッドの定義について
#Rubyではメソッドを呼び出す際に引数の過不足があるとエラーになる
#しかしデフォルト値を設定すると引数がない場合も呼び出すことができる
#引数なしの場合はcountryに"Japan"を設定する
def greet(country = "Japan")
  if country == "Japan"
    puts "こんにちは"
  else
    puts "Hello"
  end
end

greet("us")
greet

#?で終わるメソッド
#Rubyのメソッドは？や！で終わらせることができる。？で終わるメソッドは慣習として真偽値（trueかfalseを返すメソッド
#空文字であればtrue,そうでなければfalse
puts "".empty?
puts "こんにちは".empty?
#引数の中に文字列が含まれていればtrue、そうでなければfalse
puts "watch".include?("at")
puts "watch".include?("in")

#奇数ならtrue,偶数ならfalse
puts 1.odd?
puts 2.odd?

#偶数ならtrue,偶数ならfalse
puts 1.even?
puts 2.even?

#オブジェクトがnillであればtrue,そうでなければfalse
puts nil.nil?
puts "abc".nil?
puts 1.nil?

#!で終わるメソッド
#！で終わるメソッドは！がついていないメソッドよりも危険という意味を持ちます。
#Stringクラスにはupcaseメソッドとupcase!メソッドという２つ大文字にするのメソッドがある。
#upcaseだと変数aの値は変化なし
a = "ruby"
puts a.upcase
puts a

#upcase!だと変数aの値も大文字に変わる
puts a.upcase!
puts a

#エンドレスメソッドの定義
#endを省略して１行でメソッドを定義できる、エンドレスメソッド定義構文が導入された。
#通常のメソッドの定義
def greet
  "Hello"
end

puts greet

#エンドレスメソッド定義
def greet = "hello"

puts greet

#通常のメソッド定義
def add(a,b)
  a + b
end
puts add(1,2)

#エンドレスメソッド定義
def add(a,b) = a + b
puts add(4,5)