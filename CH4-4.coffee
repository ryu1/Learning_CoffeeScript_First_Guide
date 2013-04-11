###
  プロパティ作成のテクニック
###

###
  静的なプロパティ
    @をつけると、prrtotypeではなく直接クラスにプロパティが追加されます。
    newで作成したインスタンスには属さない静的（static）なプロパティとして利用できます。
###

class Fish
  @classname: "Fish"

console.log Fish.classname

###
  プライベートなプロパティを作る
    =を使って代入すると、クラス内で、のみ有効な変数や関数を作ることができます。
    これらの変数はクラス外からはアクセスができず、プライベート変数となります。
###

class Secret
  # プライベートな変数
  _key = "AllYourBase"

  # プレイベートな関数
  _encrypt = (str) ->
    str.split('').reverse().join('')

  # 公開メソッド
  getKey: ->
    _key

  # 公開メソッド
  encrypt: (str) ->
    _encrypt str

secret = new Secret
console.log secret.getKey() # 結果はAllYourBase

console.log secret.encrypt 'tiger' # 結果はregit

console.log typeof secret._key # 結果はundefined

console.log typeof secret._encrypt # 結果はundefined