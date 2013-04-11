###
  クラスの定義
###

###
  クラスとインスタンスの作成
###

# Birdクラスを定義する

class Bird
  nickname: "ある鳥"

# 2つのインスタンスを作る

birdA = new Bird
birdB = new Bird

console.log birdA.nickname
console.log birdB.nickname

#インスタンスにプロパティをセットする
class Bird
  nickname: "ある鳥"

birdA = new Bird
birdB = new Bird

birdA.nickname = "太郎"

console.log birdA.nickname
console.log birdB.nickname

# インスタンスへの変更はお互いに影響しない
class Bird
  nickname: "ある鳥"

birdA = new Bird
birdB = new Bird

birdA.nickname = "太郎"
birdB.nickname = "次郎"

console.log birdA.nickname
console.log birdB.nickname

###
  プロパティの参照のされ方
    クラスのプロパティとインスタンスのプロパティは別のもの
###

class Bird
  nickname: "ある鳥"

birdA = new Bird

# インスタンスにプロパティが定義される
birdA.nickname = "太郎"

# birdからnicknameプロパティを削除する。インスタンスのプロパティが削除されるが、クラスのパロパティが削除されたわけではない。
delete birdA.nickname

# インスタンスのプロパティがないので、クラスのプロパティを参照する
console.log birdA.nickname

###
  メソッドの作成
###

class Bird
  # プロパティ
  nickname: "ある鳥"

  # メソッド
  sing: ->
    console.log "チュンチュン"

birdA = new Bird

birdA.sing()

###
  prototype
###

# クラスのプロパティを動的に追加する
class Bird
  nickname: "ある鳥"

birdA = new Bird
console.log birdA.location

Bird.prototype.location = "木の上"
console.log birdA.location

# ::と書くこともできる
Bird::sing = ->
  console.log "チュンチュン"

birdA.sing()
Bird::sing()

###
  コンストラクタ
###

class Bird
  constructor: ->
    # @は、インスタンス自信を指すため、birdA.nicknameに代入するのと同じ効果となる
    @nickname = "ある鳥"

console.log Bird::nickname
birdA = new Bird
console.log birdA.nickname

delete birdA.nickname
console.log birdA.nickname
