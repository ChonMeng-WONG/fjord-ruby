# -*- coding: utf-8 -*-

#---------------ブロック作成要点-----------------------
=begin
  最初から

開始 "外ブロック"...
開始 "ある小さなブロック"...
..."ある小さなブロック" 終了, 返り値は:  5
開始 "もうひとつのブロック"...
..."もうひとつのブロック" 終了, 返り値は:  I like Thai food!
..."外ブロック" 終了, 返り値は:  false

↑↑↑↑↑↑↑↑↑↑↑↑　これを作るのがややこしいので、

「外ブロック」をまず無視して

```
　log 'ある小さな' do # 二回目logメソッド
    5 # 返り値1(二回目log)
  end # 二回目log 終了 block.call.to_sの行を
  log 'もうひとつの' do #　三回目logメソッド
    'I like Thai food!' # 返り値2 (三回目log)
  end # 三回目log終了
```

  出力が同じブロックを作成して、最後に「外ブロック」で囲めばできた。
  まぁ、やりかたは人それぞれだと思いますが。こちらの考え方はわかりやすいかな。

=end
#----------------------------------------------------- 
def log description, &block # (logメソッドの後に、ブロックdo...endを)
  puts '開始 "' + description.to_s + 'ブロック"...'
  puts '..."' + description.to_s + 'ブロック"終了, 返り値は: ' + block.call.to_s
end
 
log '外' do # 一回目logメソッド呼び出す
  log 'ある小さな' do # 二回目logメソッド
    5 # 返り値1(二回目log)
  end # 二回目log 終了 block.call.to_sの行を
  log 'もうひとつの' do #　三回目logメソッド
    'I like Thai food!' # 返り値2 (三回目log)
  end # 三回目log終了
  false # 返り値3 (一回目log)
end

