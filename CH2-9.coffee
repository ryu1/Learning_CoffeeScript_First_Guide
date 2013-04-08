###
  ループ・繰り返し
###

###
  - 配列に対するループ
###

# for..inは、配列に対してのみ使えます。

fruits = [  'apple', 'orange', 'banana']
for fruit in fruits
  console.log fruit

# インデックスを使用する。
# インデックスは変更不可。スキップしたい場合は、条件分岐を使用する。
fruits = [ 'apple', 'orange', 'banana']
for fruit, i in fruits
  console.log "#{i}: #{fruit}"

###
  要素をスキップする
###

# for...in...by
# byの後に指定した数だけインデックスが進みます。

numbers = [0..10]

for num in numbers by 2
  console.log num

###
  オブジェクトに対する繰り返し
###

query =
  from: 'Tokyo'
  to: 'Vientiane'
  order: 'price'

for name, value of query
  console.log "#{name}: #{value}"

# for...ofではプロトタイプチューン上のプロパティーも取り出される

Object.prototype.prop2 = "value2"

obj = new Object
obj.prop1 = "value1"

for name, value of obj
  console.log "#{name}: #{value}"

# for own...ofで、オブジェクト自体が持つプロパティに繰り返しを限定する

Object.prototype.prop2 = "value2"
obj = new Object
obj.prop1 = "value1"

for own name, value of obj
  console.log "#{name}: #{value}"

# １行にループ処理を詰め込む

prices = [ 100, 200, 300]
total = 0

total += price for price in prices

console.log total

###
  条件分岐を式として使う
###

# ifを使って代入する
sex = if hasY then male else female

# switchを使って代入する
feel = 'cool'

color =
  switch feel
    when 'warn' then 'red'
    when 'cool' then 'blue'
    else 'white'

console.log color # 結果はblue

# 各プロパティの値を配列にまとめる。後置形式

person =
  name: "Shigeru"
  nationality: "Japanese"
  occupation: "Singer"

values = (value for key, value of person)

console.log values # 結果は['Shigeru','Japanese','Singer']

###
  ループの応用
###

# 配列の要素を処理しながら置き換える(map)

fruits = ['apple', 'orange', 'pineapple']

upperFruits = (name.toUpperCase() for name in fruits)

console.log upperFruits # 結果は['APPLE', 'ORANGE', 'PINEAPPLE']

# 配列から条件に合う要素を抜き出す(select)

words = [ 'bake', 'cheese', 'cake']

selectedwords = (word for word in words when word.indexOf('a') isnt -1)

console.log selectedwords # ['bake', 'cake' ]

# 行末に\を置くと文を次の秒につなげることができます。

words = [ 'bake', 'cheese', 'cake']

selectedWords = (
  word \
  for word in words \
    when word.indexOf('a') isnt -1
)

console.log selectedWords # [ 'bake', 'cake' ]

# 配列に要素が存在するか調べる(include)

members = [ '太郎', '二郎', '三郎', '四郎' ]

console.log '二郎' in members # 結果はtrue

console.log '吾郎' in members # 結果はfalse