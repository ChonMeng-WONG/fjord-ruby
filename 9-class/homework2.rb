# 三歳になるまで実らない。
# -*- coding: utf-8 -*-

class OrangeTree

  # 初期化設定
  def initialize
    puts 'オレンジの木の芽が出た!!!'
    @treeheight = 30 # 高さを0.3m
    @treeages = 0 # 年齢を0
    @orangeCount = 0 # 果実を0
    @years = 30 # 年齢を30歳までに設定
  end

  def height #初期高さを出力
    puts "オレンジの木の高さは#{@treeheight}cmです。"
  end

  def countTheOragnes #オレンジの実を出力する
    puts "今、残りのオレンジは" + @orangeCount.to_s + "個がありますよ〜イェイ〜"
  end

  def one_year_passes #1年間経った時
    @orangeCount = 0 # 繰り越しはしない、落としてしまうため
    @treeages += 1
    puts @treeages.to_s + "年が経ちました＞W＜"
    puts "昨年度の摘まなかったオレンジが全部落ちてしまった。。。"
    if isEndYear
      puts "かわいいオレンジの木が死んでしまった丌口丌"
      die
      exit
    end
    @treeheight += getAgeGrowth # 毎年の高さを自己代入して計上していく。
    if @treeages > 3 # 3歳まで実らない。
      @orangeCount = getAgeOrange # 実ったオレンジの結果を代入
      puts "しかし今年は！オレンジが" + @orangeCount.to_s + "個のオレンジの実がなりました。"
    end
  end

  def getAgeGrowth # 年齢ごとに、成長した高さを変更
    result = 0
    if @treeages < 5 # 0~4歳: 毎年20センチアップ
      result = 20
    elsif @treeages >= 5 && @treeages < 10 # 5~9: 30センチ
      result = 30
    elsif @treeages >= 10 && @treeages < 15 # 10~14: 15cm
      result = 15
    elsif @treeages < 20 # 15~19: 8
      result = 8
    else # それ以降: 3
      result = 3
    end
  end

  def getAgeOrange # 年齢ごとに、実るオレンジの数を設定
    result = 0
    if @treeages < 5
      result = 1
    elsif @treeages >= 5 && @treeages < 10
      result = 5
    elsif @treeages >= 10 && @treeages < 15
      result = 10
    elsif @treeages < 20
      result = 20
    else
      result = 5
    end
  end

  def pickOrange
    if @orangeCount > 0
      @orangeCount -= 1
      puts "おいしいオレンジを一個いただきました〜"
    else
      puts "あの、オレンジがないんだけど"
    end
  end

  def die
    @treeheight = 0
    @orangeCount = 0
  end

  def isEndYear
    @treeages >= @years
  end

end

hey = OrangeTree.new
print hey.height
puts
while !hey.isEndYear
  hey.one_year_passes
  hey.height
  hey.pickOrange
  hey.countTheOragnes
  puts
end

