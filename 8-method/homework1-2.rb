#-*- coding: utf-8 -*-
 
def englishNumber number
  if number < 0
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end
 
  numString = ''
 
  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
 
  #  上のほうの桁から表示させていって、"left" には
  #  まだ残っている数を入れます。
  #  "write" にはこれからすぐに出力させるための
  #  一桁分の数を入れます。
  #  write と left... 良いですか? :)

  # 増やしたい任意の桁を大きい順に配列に入れる
  numPlace = [1_000_000_000_000, 1_000_000_000, 1_000_000, 1_000, 100]
  numPlaceWords = [' trillion', ' billion', ' million', ' thousand', ' hundred']
 
  # start over 100(100以上の英語単位は、全て1000倍になっている。)
 
  left  = number # 引数のnumberを設定
  counter = 0 # 初期値0
  length = numPlace.length - 1 
  for counter in 0..length # counterを0から桁数lengthまで繰り返す
    write = left / numPlace[counter] # 一個下までの桁を割っていく
    left = left - write * numPlace[counter] # left割ったらその分だけ減って、次のステップまで待つ。
    if write > 0 # 割ってみて、0より大きければ、計上する（それに相応しい英語）
      containner = englishNumber write
      numString = numString + containner + numPlaceWords[counter]
      if left > 0 # 割ってみて、0 より小さいと、計上しない(相応しい英語がない、次のステップ)
        numString = numString + ' '
      end
    end
  end
 
  # end over 100
 
  # start 10(2桁、11-19の特別の書き方)
 
  write = left/10 # number を 10 で割る
  left  = left - write*10 # 
  if write > 0
    if ((write == 1) and (left > 0)) # 11-19であれば
      numString = numString + teenagers[left-1] #teenagers (特別の書き方で出力)
      left = 0 # left なし
    else
      numString = numString + tensPlace[write-1] #そうでなければ、普通な書き方にする
    end
    if left > 0
      numString = numString + '-'
    end
  end
 
  # end 10
 
  # start 1(上記の全ての仕分けを経歴してから、最後の1桁だけ判断)
 
  write = left  #　最後の段階、white 残り　1桁、leftと同じ
  left  = 0
  if write > 0 # write は 0でない場合、英語に変換する
    numString = numString + onesPlace[write-1]
  end
 
  # end 1
 
  numString #　返り値
end
 
puts englishNumber(  0)
puts englishNumber(  -9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)