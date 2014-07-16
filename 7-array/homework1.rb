puts '氏名を入力してください'
puts '最後はEnterだけの空行にしてください'
# 配列names、要素nameとも空にする
names = []
name = 

# 入力が空まで続きます。
while name != ""
  name = gets.chomp
  names << name # 入力した要素を配列に入れる
end

# 何も入力しない場合と入力した場合の条件分岐をつける
if names.length == 1
  puts "何も入力されていません"
else
  print 'アルファベット順に並べます'
  puts names.sort # ソードメソッドでアルファベット順で並べる。
end

