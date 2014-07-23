# 赤ちゃんドラゴンと会話するプログラム
# -*- coding: utf-8 -*-

class Dragon
	def order # 入力を求む
    while @program != 0 # exitに入るまでloopする。
      print "指令を入れてください。\n1: 餌をあげる。\n2: トイレに連れて行く。\n3: 寝かしつける。\n4: 空中に投げ上げる。\n5: 軽く揺する。\n>"
      command = gets.chomp.to_i
      if command == 1
        feed
      elsif command == 2
        toilet
      elsif command == 3
        goToBed
      elsif command == 4
        fly
      elsif command == 5
        jiggle
      elsif command != 1 && command != 2 && command != 3 && command != 4 && command != 5 
        puts "指令が無効です。"
      end
    end
  end

  def initialize name # 初期化
    @name = name
    @asleep = false # 初期は起きている
    @stuffInBelly = 10 # お腹すいているかどうか(0-10)
    @stuffInIntestine = 0 # トイレに行きたいかどうか(0-10)
    puts @name + "は生まれた！"
  end

  def feed
    puts "あなたは" + @name + "に食べ物を与えます。"
    @stuffInBelly = 10
    passageOfTime
  end

  def toilet
    puts "あなたは" + @name + "をトイレに連れて行きます。"
    @stuffInIntestine = 0
    passageOfTime
  end

  def goToBed
    puts "あなたは" + @name + "を寝かしつけます。"
    @asleep = true # 揺すると眠くなる
    passageOfTime
  end

  def fly
    puts "あなたは" + @name + "空中に投げ上げます。"
    puts "彼はキャハキャハ笑い、あなたの眉毛は焼け焦げた。"
    passageOfTime
  end

  def jiggle
    puts "あなたは" + @name + "を優しく揺すります。"
    @asleep = true # 揺すると眠くなる
    puts "彼は短くうとうと..."
    passageOfTime
    if @asleep
      @asleep = false
      puts "...でもやめるとすぐおきちゃう"
    end
  end

  private # 以下の部分はユーザーに知らせない部分

  def hungry? # お腹すいた？
    @stuffInBelly <= 2
  end

  def poppy? # うんちしたい
    @stuffInIntestine >= 8
  end

  def passageOfTime # 時間が経ったら
    if @stuffInBelly > 0  # 胃袋にまだなんか入ってる、大丈夫
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep # 胃袋にもう何も入ってない！！！！飼い主を食いそう！！！
        @asleep = false
        puts "彼は突然飛び起きます！"
      end
      puts @name + "の胃袋に何も入っていません。お腹空きすぎて、あなたを食べちゃった"
      @program = 0
      exit
    end

    if @stuffInIntestine >= 10 # トイレ我慢できない
      @stuffInIntestine = 0 # リセットして(漏れちゃった)
      puts "おっと！" + @name + "はやっちゃったようです..."
    end

    if hungry? # お腹空いるかどうか判定
      if @asleep # 空いていたら起きるように
        @asleep = false
        puts "彼は突然おきます！"
      end
      puts @name + "のお腹はごろごろ言ってます..."
    end

    if poppy? # トイレ行きたいかどうか判定
      if @asleep # 行きたいなら起きるように
        @asleep = false
        puts "彼は突然おきます"
      end
      puts @name + "はうんちをしたく踊っています..."
    end
  end

end # クラスのend

monster = Dragon.new "ディガレックス"
monster.order