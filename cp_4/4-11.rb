# break
# breakを使うと、繰り返し処理を脱出することができる。shuffleメソッドで配列の要素をランダムに並び替える
numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  # 5が出たら繰り返しを脱出する
  break if n == 5
end

# breakメソッドだけでなく、while文やunitil文、for文でも使うことができる
numbers = [1,2,3,4,5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end  
# breakに引数を渡すと、while文やfor文の戻り値になる。引数を渡さない場合の戻り値はnil.

ret = 
while true
  break
end

puts ret

ret = 
while true
  break 123
end

puts ret

# 繰り返し処理が入れ子になっている場合は一番内側の繰り返し処理を脱出します。
fruits = ["apple","melon","orange"]
numbers = [1,2,3]
fruits.each do |fruit|
  # 配列の数字をランダムに入れ替え、３が出たらbreakする
  numbers.shuffle.each do |n|
    puts "#{fruit},#{n}"
    # numbersのループは脱出するが、fruitsのループは継続する
    break if n == 3
  end
end  

# throwとcatchを使った大域脱出
# 一気に外側のループまで脱出したい場合はKernelモジュールのthrowメソッドとcatchメソッドを使う
# catch タグ do
#   繰り返し処理
#   throw タグ
# end 

# next
# 繰り返し処理を途中で中断し、次の繰り返し処理に進める場合はnextを使う。以下は偶数であれば処理を中断して次の繰り返し処理に進むコード例。
numbers = [1,2,3,4,5]
numbers.each do |n|
  # 偶数であれば中断して次の繰り返し処理に進む
  next if n.even?
  puts n
end  

