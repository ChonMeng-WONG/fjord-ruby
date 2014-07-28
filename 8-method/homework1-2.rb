#-*- coding: utf-8 -*-
 
def englishNumber number
  if number < 0
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end
 
  numString = ''
 
  onesPlace = ['one',     'two',       'three',    'four',     'five',               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',               'sixteen', 'seventeen', 'eighteen', 'nineteen']
 
  #  上のほうの桁から表示させていって、"left" には
  #  まだ残っている数を入れます。
  #  "write" にはこれからすぐに出力させるための
  #  一桁分の数を入れます。
  #  write と left... 良いですか? :)

  # 増やしたい任意の桁を大きい順に配列に入れる
  numPlace = [1_000_000_000_000, 1_000_000_000, 1_000_000, 1_000, 100]
  numPlaceWords = [' trillion', ' billion', ' million', ' thousand', ' hundred']
 
  # start over 100
 
  left  = number
  counter = 0
  length = numPlace.length - 1
  for counter in 0..length
    write = left / numPlace[counter]
    left = left - write * numPlace[counter]
    if write > 0
      containner = englishNumber write
      numString = numString + containner + numPlaceWords[counter]
      if left > 0
        numString = numString + ' '
      end
    end
  end
 
  # end over 100
 
  # start 10
 
  write = left/10
  left  = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end
 
  # end 10
 
  # start 1
 
  write = left
  left  = 0
  if write > 0
    numString = numString + onesPlace[write-1]
  end
 
  # end 1
 
  numString
end
 
puts englishNumber(  0)
puts englishNumber(  9)
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