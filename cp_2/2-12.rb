#基礎知識
#ガベージコレクション(GC)
#Rubyは使用されなくなったオブジェクトを回収し、自動的にメモリに解放する。
# このためメモリ管理しなくて良い。この仕組みをガベージコレクションという。

# エイリアスメソッドは同じ実装で名前だけ異なるメソッドのこと。
# lengthもsizeもどちらも文字数を返す
puts "hello".length
puts "hello".size

# 参照の概念を理解する
# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = "hello"
b = "hello"
puts a.object_id
puts b.object_id

# cにbを代入する。bとcどちらも同じオブジェクト。
c = b
puts c.object_id
puts b.object_id

# メソッドの引数にcを渡す。引数として受け取ったdはb,cと同じオブジェクトを参照している
def m(d)
  d.object_id
end
puts m(c)

#equal?メソッドを使って同じオブジェクトかどうか確認しても良い
puts a.equal?(b)
puts b.equal?(c)
