# -*- coding: utf-8 -*-
=begin
#---------------ブロック作成要点-----------------------

  最初から

開始 "外ブロック"...
  開始 "ある小さなブロック"...
    開始 "ちっちゃなブロック"...
    ..."ちっちゃなブロック" 終了, 返り値は:  lots of love
  ..."ある小さなブロック" 終了, 返り値は:  42
  開始 "もうひとつのブロック"...
  ..."もうひとつのブロック" 終了, 返り値は:  I love Indian food!
..."外ブロック" 終了, 返り値は:  true

↑↑↑↑↑↑↑↑↑↑↑↑　これを作るのがややこしいので、

「外ブロック」と「２回目階層」をまず無視して、一回目を２つを作る

```
　$layer = 1　
  log 'ある小さな' do　# 一層目はインデント一回
    42　# 返り値
  end
  $layer = 1　# 一層目はインデント一回
  log 'もうひとつの' do
    'I love Indian food!'
  end
```
　できたら、一回目の一個目に、２回目階層を作る
```
　$layer = 1　
  log 'ある小さな' do　# 一層目はインデント一回
    $layer = 2　
    log 'ちっちゃな' do　# 二層目はインデント二回
      'lots of love'
    end
    42　# 返り値
  end
  $layer = 1　# 一層目はインデント一回
  log 'もうひとつの' do
    'I love Indian food!'
  end
```
　最後は「外ブロック」で全体を囲めば完成

  まぁ、やりかたは人それぞれだと思いますが。こちらの考え方はわかりやすいかな。


----------------------------------------------------  
=end

def log description, &block
  $layer = "  " * $layer.to_i # ブロックの階層を設定、インデントは階層により増加(1階層は1個、2回目は2個)
  puts $layer.to_s + '開始 "' + description.to_s + 'ブロック"...'
  puts $layer.to_s + '..."' + description.to_s + 'ブロック"終了, 返り値は: ' + block.call.to_s
end
 
log '外' do # インデントなし
  $layer = 1
  log 'ある小さな' do# 一層目はインデント一回
    $layer = 2
    log 'ちっちゃな' do# 二層目はインデント二回
      'lots of love'
    end
    42# 返り値
  end
  $layer = 1# 一層目はインデント一回
  log 'もうひとつの' do
    'I love Indian food!'
  end
  true# 返り値
end