###
  関数
###

hello = -> console.log "Hello!"

###
  - 関数定義を複数行で書く
###

hello = ->
  console.log "Hello!"

###
  - 引数をとる関数
###

hello = (name) ->
  console.log "Hello, #{name}!!"

getFullName = (firstName, lastName) ->
  "#{firstName} #{lastName}"

###
  - デフォルト引数
    引数が渡されなかった場合にデフォルト値が使われます。
###

getPrice = (price, discountPercent = 0) ->
  price * (1 - discountPercent / 100)

getPrice 1000 # 結果は1000

getPrice 1000, 30 # 結果は700

###
  - 名前付き関数と無名関数
    CoffeeScriptでは関数では名前をつけることができない。
    無名関数を変数に代入する方式が採用されている。

    - JavaScriptでの名前付き関数
      # 名前付き関数
        function addFive(num) {
          return num + 5;
        }

      # 変数に無名関数を代入
        var addTen = function(num) {
          return num + 10;
        }
###

###
  - 無名関数に続けて引数を指定する
###

# 無名関数を1行で記述する
setTimeout (-> console.log "Timed out!"), 1000

# 無名関数をブロックで記述する
setTimeout ->
  console.log "Timed out!"
  , 1000
