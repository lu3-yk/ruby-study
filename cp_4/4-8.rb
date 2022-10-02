# ブロックについてもっと詳しく
# 添え字つきの繰り返し処理
# Rubyではeachメソッドを使うのが繰り返し処理の基本。しかし。eachメソッドでは何番目の要素を繰り返しているのか、ブロック内で判別できない。
# 繰り返し処理をしつつ、処理している要素もよえじも取得したい。そんな時はeach_with_indexを使う。
# each_with_indexを使うと、ブロックパラメーターの第二パラメータに添え字を渡してくれる。
fruits = ['apple','orange','melon']
# ブロックパラメータのiには0,1,3...と要素の添え字が入っている
fruits.each_with_index{ |fruit, i| p '#{i}: #{fruit}' }

[5, 10, 15].each.with_index(1) do |n, i|
  p [n, i]
end

# with_indexメソッドを使った添え字つきの繰り返し処理
# each_with_indexメソッドだと、eachメソッドの代わりにしか使えない。
# 例えばmapメソッドで繰り返し処理をしつつ、添字も同時に取得したいときはmapメソッドとwith_indexメソッドを組み合わせて使う。
# mapとして処理しつつ、添字も受け取る
fruits = ['apple','orange','melon']
puts fruits.map.each_with_index{ |fruit, i| puts '#{i}: #{fruit}' }
