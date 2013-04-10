###
  CoffeeScriptの便利なテクニック
###

###
  複数行にわたる正規表現
###

dateTimePattern = ///
  (\d{4})-(\d{2})-(\d{2})
  T
  (\d{2}):(\d{2}):(\d{2})
///

console.log "#{dateTimePattern.test '2012-03-11T03:12:50'}" # 結果はtrue

###
  JavaScriptの埋め込み
    ``（バッククオート）で囲われた部分はコンパイル後もそのまま残ります。
###

# CoffeeScriptとjavaScriptを混在させる
double = `function(n) { return n * 2}`

console.log double 5 # 結果は5

###
  不要な戻り値を抑制する
###

# 関数の最後にfor文がある。

func = ->
  for i in [0..10]
    something()

# 明示的にreturnを書いて戻り値を抑制する

func = ->
  for i in [0...10]
    something()
  return
