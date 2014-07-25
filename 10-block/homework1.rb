# -*- coding: utf-8 -*-
# 今日すぎた時間の回数だけ、チャイムを打つ
# 例：５時なら５回
# ただし、午後になったら13-24時ではなく、それを1-12に変換すること.

def gfClock &block
  cnt = 0 
  now = Time.now.hour # 現時刻を取得
  if now > 12 
     now = now - 12
  end
  while cnt != now # now回処理を繰り返す
    block.call
    cnt += 1
  end
end
 
gfClock do
    puts "ブロックによる時間報告ですよ〜"
  end

puts "以上はブロック"

# -----------------------------------------------------
# ---ブロックなし、Classで作ってみた。
# ---でも、なぜブロックを使うのか、まだよくわからない。
# ---見た目はそんなにかわらない？

class Song
def gfClock2
  cnt = 0 
  now = Time.now.hour # 現時刻を取得
  if now > 12 
     now = now - 12
  end
  while cnt != now # now回処理を繰り返す
    sing
    cnt += 1
  end
end
 
def sing
  puts "クラス・メソッドによる時間報告ですよ〜"
end
end

sang = Song.new
sang.gfClock2

puts "以上はクラスとメソッドのみ"
# ----------------------------------------------------------
# ブロックではなく、手続きオプジェクとで書いてみた。


sang2 = Proc.new do
  puts "手続きオブジェクトによる時間報告ですよ"
end

#今回メインとなるメソッド
#現在の時刻を計算する
def gfClock3 someProc
  #現在時刻を獲得
  time = Time.now.hour

  #時刻を12時間系に変換
  if time > 12
    time -= 12
  end

  #現在の時刻手続きオブジェクトをコールする
  time.times do
    someProc.call 
  end 
end

gfClock3 sang2

puts "以上は手続きオブジェクトでした"