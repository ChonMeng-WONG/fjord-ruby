#怒ったボス」のプログラムを書いてみましょう。 
#まず、無作法に何が望みか聞いてきます。 で、何を答えようと「怒ったボス」はそれを叫び返して、あなたを首にします。 
#たとえば、もし給料上げてくださいとタイプしたとすると 
#なにぃ? "給料上げてください" だとー!! おまえは首だ!! と、叫び返してきます。
#ドラゴンボールバージョンにいじってみた笑
puts '(やっとドラゴンボールを7つ集めました！！！)'
puts '神龍：「さぁ、願いを言え。」'
puts '(願いを入力してください。)'
def shout
wish = gets.chomp
puts '孫悟空:「俺の願いは　'+ wish + '　だ！！かなってくれ！」'
puts '神龍：「なにぃ?' + wish + 'だとー!! それは許せん！死ね！」'
puts 'Game Over'
end
puts shout


