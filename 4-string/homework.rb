# -*- coding: utf-8 -*-
#最初に姓、次に名前を聞いて、最後にフルネームに対してあいさつを するようなプログラムを書いてみましょう。
#姓を入力
puts 'Please enter your family name'
familyname = gets.chomp
#名を入力
puts 'Your family name is '+ familyname + ', right? Next, please enter your name.'
name = gets.chomp
#姓と名を組み合わせ、そして挨拶を出力
puts 'Thz~~Your name is '+ name + ' right?:)'
puts "Hello!! " +  familyname + ' ' +name +  " and my name is Celestial being. Nice to meet you\n"

#好きな数を入力してもらい、それに1を加えて、その結果を ベターな 数字として薦めるプログラムを書きましょう。 
#数を入力
puts 'Please enter your favourite number'
fav_number = gets.chomp
#入力された数を数値化にし、1を足します。
sugg_number = fav_number.to_i + 1
#入力された数を表示(文字列として表示)
puts 'Your favourite number is ' + fav_number.to_s + '.'
#1を足された数字列を表示(文字列として表示)
puts 'But i suggest you to choice ' + sugg_number.to_s + ' because '+ sugg_number.to_s + ' is bigger than ' + fav_number.to_s + '. :-)'