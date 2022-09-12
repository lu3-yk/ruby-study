#&&や||を使った場合、式全体の戻り値は必ずしもtrueまたはfalseになるとは限らない
puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false
puts || nil
nil || false || 2 || 3

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
