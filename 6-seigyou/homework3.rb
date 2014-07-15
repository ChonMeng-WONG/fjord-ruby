# -*- coding: utf-8 -*-
puts 'うるう年の測定時間だぁ。さぁ、来いや。'
#開始の年を入力
puts '開始の年'
start = gets.chomp.to_i

#終わりの年を入力
puts '終わりの年'
last = gets.chomp.to_i

# 終わりの年　は、範囲指定では未満になっているので、1を足します。
# 開始の年が終わりの年に正しくなるまでループする
while start != last + 1
#うるう年の条件を検測し、結果を出力する
  if (start % 4 == 0) && (start % 100 != 0) || (start % 400 == 0)
    puts start.to_s + '年はうるう年でござる'
  else
    puts start.to_s + '年はうるう年でござらん'
  end
#開始の年の処理, 終わりの年になるまで1を足し続けていく
  start = start + 1
end
