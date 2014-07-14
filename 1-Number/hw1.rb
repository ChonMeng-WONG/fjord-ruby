# -*- coding: utf-8 -*-
# 1年は何時間でしょうか?
#一日は二十四時間
hours=24
#一年は365日
days=365
#一年の時間数
year_hours= hours * days
print "1年間は" , year_hours , "時間です。\n"

#十年間は何分でしょうか？
#1時間=60分
minutes = 60
#1日=24時間
hours = 24
#1年= 365日
days = 365
#10年
years = 10
#10年は何分？
years_minutes= years * days * hours * minutes
print "10年間は" , years_minutes, "分です。\n"

#あなたが生まれてから今日まで何秒経っているでしょうか?
#"date"をrubyに
require "date"
#1分=60秒
seconds = 60
#1時間=60分
minutes = 60
#1日=24時間
hours = 24
#今日の日付
d1 = Date.today
#生まれた日付
d2 = Date.new(1989,3,14)
#両者の差(日)
value = (d1 - d2).to_i #得られた結果を数値型に変換
#生まれてから今日まで何秒？
total = value * hours * minutes * seconds
print "生まれてから今日まで" , total, "秒経っています。\n"

#一生のうちいくつ野チョコレートを食べたい？
#寿命=100歳
#1-20歳: 毎月10個
step1 = 20 * 12 *10
#21-80歳: 毎月5個
step2 = 60 * 12 * 5
#81-100歳: 毎月10個
step3 = 20 * 12 * 1
total = step1 + step2 + step3
print "一生のうち" , total , "個のチョコレートを食べたい。\n"





