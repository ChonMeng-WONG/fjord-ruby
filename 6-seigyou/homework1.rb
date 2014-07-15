#"99本のビールが壁に..." 遠足などでよく歌われる古典的な童謡の歌詞、
#"99 Bottles of Beer on the Wall" を 出力するプログラムを書いてみましょう。 

number = 99

while number != 0
  puts number.to_s + " Bottles of beer on the wall"
  puts number.to_s + " Bottles of beer"
  puts "Take one down and pass it around"
  number = number - 1
  puts number.to_s + " Bottles of beer on the wall"
  puts " "
end

puts '歌い切ったね！すばらしい〜'