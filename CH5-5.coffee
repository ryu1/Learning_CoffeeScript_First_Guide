###
オブジェクト用の関数
###

_ = require 'underscore'

###
  keys
    _.keys(object)
    objectが持つプロパティの名前の一覧を配列で返します。
###

console.log _.keys {ichi: '一', ni: '二', san: '三'}

###
  values
    _.values(object)
    objectが持つプロパティの値の一覧を配列で返します。
###

console.log _.values {ichi: '一', ni: '二', san: '三'}

###
  clone
    _.clone(object)
    objectの浅いコピーを作成して返します。
    ２階層目以降のオブジェクトや配列については参照がコピーされます。

###

person1 =
  name: 'Daisuke'
  num: [1, 2, 3]
  colors:
    hair: 'black'

person2 = _.clone person1

console.log "person1:", person1
console.log "person2:", person2

person1.name = 'Darvish'
person1.num[0] = 5
person1.colors.hair = 'brown'

console.log "person1:", person1
console.log "person2:", person2

###
  extend
    _.extend(destination, *sources)
    sourceのオブジェクトのプロパティすべてをdestinationのオブジェクトにコピーします。
    同じ名前のプロパティがある場合は上書きされます。
    第２引数以降にはsources引数を何個でも指定出来ます。
    destinationオブジェクトの内容は変更され、またそのオブジェクトが戻り値となります。
###

console.log _.extend {name: "no name"}, {name: "Masashi", age: 26}

# destinationのオブジェクトの内容を残しておきたい場合は、事前にcloneなどで複製してください

defaultParames = {page: 1, count: 50}

params = _.clone defaultParames # defaultParamsが変更されないようにコピーしておく

_.extend params, {page: 3} # コピーしたオブジェクトにプロパティを上書きする

console.log params


