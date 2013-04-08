###
  条件分岐
###

###
  if/else
###

if money < 1000
  work()
else
  buy()

# １行で書く
if money < 1000 then work() else buy()

# 後置形式のif
eat() if hungry

###
  unless
    if notと同じ効果
###

  unless fun
    changeSomething()

# 後置形式のunless
changeSomething() unless fun

###
  while
###

count = 0
while count < 10
  count++

console.log count # 結果は10

# 後置形式のwhile

count = 0
count++ while count < 10

###
  until
    while notと同じ効果
###

count = 0
count++ until count >= 10
console.log count # 結果は10

###
  loop
    無限ループを作ります。
###

count = 0
loop
  if ++count > 3
    break

###
  switch
    whenの終わりに自動的にbreakされます。
    複数の条件を１つのwhenにまとめるにはカンマ区切りで列挙します。
###

switch season
  when '春' then go '花見'
  when '夏' then go '海'
  when '秋' go '紅葉狩り'
  when '冬'
    setup 'こたつ'
    eat 'みかん'
  when '盆', '正月'
    go '実家'
  else go '散歩'

###
  条件分岐のある関数の戻り値
    関数の最後に条件分岐があっても、それぞれの分岐の先にretrunが追加されます。
###

isAdult = (age) ->
  if age < 20
    false
  else
    true
