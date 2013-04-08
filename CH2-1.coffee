###
  文法の基本
###

###
  - CoffeeScriptの基本形
###
say = (text) ->
  console.log text

say "Hello!"

###
    - 変数宣言が不要
    - インデントを使ってブロックを作る
    - 行末で式が終わる場合はセミコロンが不要
      - １行で複数の式を書く
###

x = 5; y = 10; z = x + y
console.log z

###
    - 引数付きの関数呼び出しではカッコが省略できる
###

console.log Math.sqrt 16

###
      - 間違った例
###

Math.max Math.min 5, 7, 2

###
      - 正しい例
###

Math.max Math.min(5, 7), 2
Math.max (Math.min 5, 7), 2

###
      - 引数なしで関数を呼び出すにはカッコが必要
###

Math.random()

###
      - あるいは、別の方法として、doを頭につけて呼び出すことができる
###

do Math.random