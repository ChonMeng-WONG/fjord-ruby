# -*- coding: utf-8 -*-
#メッセージを入力
puts '可愛い坊やですね。こんにちは'
msg = gets.chomp

while msg != 'BYE'#BYEを入力するまでに続く
	if msg.upcase == msg #全て大文字だと返事してくれる
    year = (rand(21)+1930)
    puts 'いやー、' + year.to_s + '年以来ないね〜！'
  else
    puts '.......もっと大きな声で話しておくれ、坊や！！！' #それ以外は全て返事してくれない
	end
  print ' '
  msg = gets.chomp #再度入力
end
#　脱出したらさよならメッセージ
puts 'さようなら、また遊びにきてね'