# 今日すぎた時間の回数だけ、チャイムを打つ
# 例：５時なら５回
# ただし、午後になったら13-24時ではなく、それを1-12に変換すること.

def gfClock &block
  cnt = 0 
  now = Time.now.hour # 現時刻を取得
  if now <= 12 # Time.now.hour は 0-23 になる、それを1-24に
    now += 1 # さらに、1-24を、1-12,1-12にする
  end
  if now >= 13
    now -= 12
  end
  while cnt != now # now回処理を繰り返す
    sing
    cnt += 1
  end
end
 
def sing
  puts 'DONG!'
end
