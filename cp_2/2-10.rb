#&&や||を使った場合、式全体の戻り値は必ずしもtrueまたはfalseになるとは限らない
puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false
puts || nil
puts nil || false || 2 || 3

#unless文
status = "error"
  if status != "ok"
    puts "何か異常があります"
  end

status = "ok"
  unless status == "ok"
    puts "何か異常があります"
  else
    puts "正常です"
  end

#case文
# 一つのオブジェクトや式を複数の値と比較する場合は、elsifを重ねるよりもcase文で書いた方がシンプルになります。
country = "italy"
#if文を使う場合
if country == "japan"
  puts "こんにちは"
elsif country == "us"
  puts "Hello"
elsif country == "italy"
  puts "Ciao"
else
  puts "???"
end

#case文を使う場合
case country
when "japan"
  puts "こんにちは"
when "us"
  puts "Hello"
when "italy"
  puts "Ciao"
else
  puts "???"
end

#条件演算子（三項演算子）
#式？真だった場合の処理：偽だった場合の処理

#if文だと
n = 11
if n > 10
  puts "10より大きい"
else
  puts "10以下"
end

#このコードを三項演算子を使うことで
n = 11
 puts n > 10 ? "10より大きい" : "10以下"
