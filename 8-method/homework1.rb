puts 'こんにちは, 私の実験のためにお時間をとって'
puts 'いただきありがとうございます. この実験は, '
puts '人々がメキシコ料理に対してどう感じているか'
puts 'に関するものです. メキシコ料理について考え'
puts 'すべての質問に対して, yes か no かで正直に'
puts '答えてください. この実験はおねしょとは関係'
puts 'ありません.'
puts

def ask question  # クラスaskに引数questionを渡す
  goodAnswer = false 
  while (not goodAnswer) #回答がyesかnoかを確認
    puts question        #与えられたquestionを出力
    reply = gets.chomp.downcase #回答を入力待ち

    if (reply == 'yes' or reply == 'no') #yes/noという形を確認
      goodAnswer = true 
    else # 合わなければyes/noで答えることに誘導
      puts '"yes"か"no"かでお答えください.'
    end
  end
  return reply
end

ask 'タコスは好きですか？'  #メソッド ask question という形に代入
ask 'ブリーとは好きですか？'
wetsBed = ask 'ベッドを濡らしますか？'
ask 'チミチャンガは好きですか？'
puts 'さらにいくつか質問を重ねます'
ask 'ソバイピーヤは好きですか？'

puts
puts 'デブリーフィング' #(訳註: 実験後、被験者にその目的・理由を明かすこと)
puts 'この実験へのご協力感謝します. 実は, この実'
puts '験はメキシコ料理とは何の関係もありません. '
puts 'この実験は夜尿症(おねしょ)に関する実験だっ'
puts 'たのです。メキシコ料理は、より正直に答えら'
puts 'れるようあなたのガードをはずすために聞いた'
puts 'に過ぎません。本当にありがとうございました.'
puts

if wetsBed == 'yes'
  puts 'おねしょするんだね'
else 
  puts 'すばらしい！おねしょしないなんて'
end
    

