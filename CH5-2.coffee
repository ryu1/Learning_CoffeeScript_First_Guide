###
  コレクション用の関数
###

_ = require 'underscore'

###
  each
    _.each(list, iterator, [context])
    listの各要素について、iteratorに指定された関数を1回ずつ実行します。
    contextを指定すると、iterator関数を実行するときにcontextをthisとして扱います。
###

_.each [1, 2, 3], (num) -> console.log num

_.each { one:1, two:2, three:3 }, (value, key) ->
  console.log "value=#{value} key=#{key}"

###
  _(第１引数).メソッド(第２引数, 第３引数..)という書き方も可能です
###

_([1, 2, 3]).each (num) -> console.log num

###
  filter
    _.filter(list, iterator, [context])
    listの各要素についてiteratorにしてされた関数を実行し、結果がtrueになる要素だけを抽出した配列を返します。
###

evennumbers = _.filter [1..10], (num) -> num % 2 is 0
console.log evennumbers

###
  all
    _.all(list, iterator, [context])
    listの各要素についてiteratorに指定された関数を実行し、すべての要素の結果がtrueとなる場合にtrueを返します。
    １つでもfalseとなる要素がある場合はfalseを返します。
###

result = _.all [2,4,6,8], (num) -> num % 2 is 0
console.log result

###
  any
    _.any(list, [iterator], [context])
    listの各要素についてiteratorに指定された関数を実行し、結果がtrueとなる要素が１つでもあればtrueを返します。
    iteratorを省略すると、要素が[trueっぽい値]かどうかを調べます。
    trueとなる要素が見つかると、それより後の要素は調べません
###

result = _.any [1,2,3,5], (num) -> num % 2 is 0
console.log result

result = _.any [1,3,5], (num) -> num % 2 is 0
console.log result

###
  pluck
    _.pluck(list, property)
    listの各要素がオブジェクトのとき、それぞれのオブジェクトからpropertyで指定されたプロパティの値を拾い、配列にして返します。
###

persons = [{name: 'Jiro', age:58}, {name:'Masako', age:53}, {name:'Aya', age:26}]

names = _.pluck persons, 'name'
console.log names

###
  max
    _.max(list, [iterator], [context])
    listの中から最も値の大きい要素を返します。iteratorに関数が指定された場合は、
    各要素に対して関数を実行し、戻り値が一番大きい要素を返します。
###

console.log _.max [5, 9, 6,3]

persons = [{name: 'Jiro', age:58}, {name:'Masako', age:53}, {name:'Aya', age:26}]

eldestPerson = _.max persons, (person) -> person.age

console.log eldestPerson

###
  min
    _.min(list, [iterator], [context])
    listの中から最も値の小さい要素を返します。iteratorに関数が指定された場合は、
    各要素に対して関数を実行し、戻り値が一番小さい要素を返します。
###

console.log _.min [5, 9, 6, 3]

persons = [{name: 'Jiro', age:58}, {name:'Masako', age:53}, {name:'Aya', age:26}]

youngestPerson = _.min persons, (person) -> person.age

console.log youngestPerson

###
  sortBy
    _.sortBy(list, iterator, [context])
    listの各要素に対してiteratorを実行し、その結果が小さい順に要素をソートした配列を返します。
###

persons = [{name: 'Jiro', rank:2}, {name:'Taro', rank:1}, {name:'Saburo', rank:3}]

ranking = _.sortBy persons, (person) -> person.rank
console.log ranking

###
    _.shuffle(list)
  shuffle
    listの要素をシャッフルしたものを返します。list自信の中身は変更せずに、シャッフルされた結果を返します。
    Fisher-Yatesというシャッフル方法を使って質が良く高速なシャッフルを行います。
###

shuffled = _.shuffle [1..10]

console.log shuffled

