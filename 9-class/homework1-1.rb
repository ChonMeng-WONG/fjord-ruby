# 一年間の秒数
secondsofyear = 365 * 24 * 60 * 60
# 誕生日の時間を設定
birthday = Time.new(1989,3,14,6,49,30)
# 誕生日から10億秒後の設定
years = birthday + 1_000_000_000
# 現在時刻を設定
now = Time.now
# 誕生日から10億秒後の時間
puts years
# 今からあとどれぐらい10億秒になる
nokori = (years - now)/secondsofyear # 年に換算

print 'あと', sprintf( "%.2f", nokori ), "年10億秒歳になる\n"