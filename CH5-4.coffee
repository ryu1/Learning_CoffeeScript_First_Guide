###
  関数用の関数
###

_ = require 'underscore'

###
  memoize
    _.memoize(function, [hashFunction])
    関数functionをメモ化した関数を返します。
    メモ化とは、一度実行した関数の引数と実行結果をペアとして記憶しておき、
    次回同じ引数で呼び出された場合に関数本体を実行せずに記憶しておいた結果を、
    返すことで高速化する手法です。

    メモ化された関数は、呼び出されたときに第１引数をキーとして用い、
    実行結果とペアにして自動的に記憶します。
###

# 呼び出し回数を記録する変数
callCount = 0

# フィボナッチ数を計算する関数

fibonacci = (n) ->
  callCount++
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)

# 開始時刻を記録
startTime = Date.now()

console.log fibonacci 43
console.log "通常版: #{Date.now() - startTime} ミリ秒 (呼出し#{callCount}回)"

# メモ化した関数で上書きする

fibonacci = _.memoize fibonacci

callCount = 0 # 呼び出し回数をリセット
startTime = Date.now() # 開始時刻を記録
console.log fibonacci 43
console.log "メモ化版: #{Date.now() - startTime} ミリ秒(呼出し#{callCount}回)"

###
  第２引数以降をキーとして用いたい場合は、hashFunctionに引数を受け取って文字列を返す関数を指定します。
  この文字列が記憶用のキーとなります。
###

# aとbを加算した結果を返す関数

add = (a, b) ->
  console.log "実行: add #{a}, #{b}"
  a + b

# メモ化する
add = _.memoize add, (a, b) ->
  # aとbを+でつながたものを記憶用のキーとする
  "#{a}+#{b}"

console.log add 1, 2
console.log add 1, 2
console.log add 1, 3