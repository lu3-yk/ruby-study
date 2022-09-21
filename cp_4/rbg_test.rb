# テスト駆動開発（TDD、TEST、DRIVEN、DEVELOPMENT）・・・プログラムの実装前にテストコードを書き（テストファースト）、そのテストコードに適合するように実装とリファクタリングを進めていく方法

def test_to_hex
  assert_equal '#000000',to_hex(0,0,0)
  assert_equal '#ffffff',to_hex(255,255,255)
end

puts 0.to_s(16)
puts 255.to_s(16)
# rjustメソッドを使って右寄せすると便利
puts '0'.rjust(5)
puts '0'.rjust(5,'0')
puts '0'.rjust(5,'_')