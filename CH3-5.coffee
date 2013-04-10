###
  クロージャ
###

###
  クロージャの基礎知識

    間違った例(javascript)
      for (var i = 1; i <= 3; i++) {
        setTimeout(function() {
          console.log(i);
        }, 1000)
      }

    iの値を別の変数_iに保存しておく(javascript)
      for (var i = 1; i <= 3; i++) {
        setTimeout((function(_1){
          return function() {
            console.log(_i);
          }
        })(i), 1000)
      }

    わかりやすくしたもの(javascript)
    for (var i = 1; i <= 3; i++) {
      // setTimeoutに渡す関数を作るための関数
      var makeFunc = function(_i) {
        // 引数で受け取った値を出力する関数を返す
        return function() {
          console.log(_i);
        }
      }

      // iのスナップショットを保存した関数をつくる
      var func = makeFunc(i);

      setTimeount(func, 1000);
    }
###

###
  CoffeeScriptでクロージャを実現する
    do (引数) ->と書くと、引数を渡しながら即席の関数を実行します。
###

# doを使ってクロージャを作る
for i in [1..3]
  setTimeout do (i) ->
    -> console.log i
  , 1000

# わかりやすくしたもの
for i in [1..3]
  # iを渡しながら関数を実行する
  func = do (i) ->
    return ->
      console.log i

  setTimeout func, 1000

###
  プライベート変数を作る
###

getKey = do ->
  _key = "AllYourBase"
  -> _key

console.log getKey() # 結果はAllYourBase

console.log typeof _key # 結果はundefined