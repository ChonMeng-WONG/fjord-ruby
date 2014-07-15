# -*- coding: utf-8 -*-
puts 'マレフィセント：「可愛い坊やですね。こんにちは」'
times = 0
while times != 3 #3回連続BYEを入力するまでに続く
	msg = gets.chomp #入力する
	if msg == 'BYE'
	puts 'マレフィセント：「なんだと！？？？」'
	times = times + 1 #'BYE'入力したら1回カウントする

	else
	if msg.upcase == msg #全て大文字だと返事してくれる
	year = (rand(21)+1500)
	puts 'マレフィセント：「いやー、' + year.to_s + '年以来ないね〜！」'
	times = 0 # 'BYEではないので、連続回数を0にリセットする'

	else
	puts 'マレフィセント：「.......もっと大きな声で話しておくれ、坊や！！！」' #それ以外は全て返事してくれない
	times = 0 # 'BYEではないので、連続回数を0にリセットする'
	end
end
end

#　脱出したらさよならメッセージ
puts 'マレフィセント：「今回は逃がしてやるよ、うっふっふ」'