###

  クラスの継承
###

###
  継承により新しいクラスを作成する
    class 小クラス名 extends 親クラス名
###

# 動物を表すクラス
class Animal
  sound: "" # 鳴き声
  name: "ある動物" # 名前

  # コンストラクタ
  constructor: (name) ->
    if name?
      @name = name

  # 引数textの内容をしゃべる
  say: (text) ->
    console.log "#{@name}「#{@sound}#{text}」"

# 猫を表すクラス。Animalクラスを継承する。

class Cat extends Animal
  sound: "ニャア" # 猫の鳴き声

# 犬を表すクラス。Animalを継承する。
class Dog extends Animal
  sound: "ワン!" # 犬の鳴き声

# Animalクラスのインスタンスを作成
animalA = new Animal
animalA.say "天気がいいなあ"

# 登場人物を作成
michael = new Cat "マイケル"
hachi = new Dog "ハチ"

# 喋らせる.
# michaelインスタンスにsayがないので、Catクラスを参照するが、Catクラスにもないので、親クラスAnimalを参照する。
# これをプロトタイプチェーンと呼ぶ。
michael.say "今日はお出かけですか?"
hachi.say "天気がいいのでうちの主人と散歩に行きます"

###
  親クラスのメソッドを呼び出す
    superと書くと、親クラスの同名のメソッドを呼び出す
###

# 親クラス
class Animal
  constructor: (name) ->
    if name?
      @name = name

  say: (text) ->
    console.log "「#{text}」"

# 小クラス
class Cat extends Animal
  constructor: (name) ->
    # Animalのコンストラクタを実行
    super name
    @type = "ペルシャ"

  say: (text) ->
    # Animalのsay()を実行
    super text
    console.log "と#{@type}ネコの#{@name}は言いました。"

snowbell = new Cat "スノーベル"
snowbell.say "何かちょうだい。"

###
  引数をインスタンスのプロパティとしてセットする
###

class Fish
  # 暗黙的に、name = @nameが行われる
  constructor: (@name) ->

boxfish = new Fish "ハコフグ"
console.log boxfish.name
