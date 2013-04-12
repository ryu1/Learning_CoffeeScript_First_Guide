###
  配列用の関数
###

_ = require 'underscore'

###
  flatten
    _.flaten(array, [shllow])
    配列arrayの階層を平らにして１階層にならします。
    shallowに値が指定されると、要素それぞれを最大１階層分だけ浅くします。
###

console.log _.flatten ['a', ['b'], 'c', [['d']]]

console.log _.flatten ['a', ['b'], 'c', [['d']]], true

###
  without
    _.without(array, [*value])
    配列arrayの中から[*value]と一致する値を除いた配列を返します。
    [*value]には第２引数以降何個でも引数を指定できます。
    値の比較は型も含めて厳密に行います。
###

console.log _.without [1, 1, 2, 2, 3, 3, 4], 2, 3

###
  uniq
    _.uniq(array, [isSorted], [iterator])
    配列arrayから重複する要素を除いた配列を返します。配列がソート済みである場合はisSortedにtrueを指定すると、
    より高速に処理されます。配列を加工してから値を比較させたい場合はiteratorに関数を指定します。
###

console.log _.uniq [1, 2, 3, 4, 3, 2, 1]

console.log _.uniq [1, 1, 2, 2, 3, 3, 4], true

uniq = _.uniq ['A', 'b', 'c', 'd', 'A', 'B', 'C'], false, (item) ->
  item.toLowerCase()

console.log uniq

###
  range
    _.range([start], stop, [step])
    stopまでの整数からなる配列を作って返します。startが省略された場合は、0を使います。
    stepには要素間の差を指定することができ、デフォルトは1です。
    stopに指定された値は配列に含まれません。CoffeeScriptのレンジに比べて便利なところはstepが指定できるという点です。
###

console.log _.range 0, 60, 5

console.log _.range 15, 0, -3