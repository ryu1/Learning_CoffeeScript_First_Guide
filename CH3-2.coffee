###
  関数にthisを束縛する
###

###
  thisの値はどのように決まるのか
###

cat =
  name: "タマ"
  speak: ->
    # オブジェクトのプロパティーとして呼び出された場合は、thisは、catを指す
    console.log "1: 私は#{@name}です"
    helper = ->
      # 単純な関数として呼び出された場合、thisは、グローバルオブジェクトを指す
      console.log "2: 私は#{@name}です"
    helper()

cat.speak()

# thisを別の変数に保存しておく
cat =
  name: "タマ"
  speak: ->
    console.log "1: 私は#{@name}です"
    that = this
    helper = ->
      console.log "2: 私は#{that.name}です"
    helper()

cat.speak()

###
  thisを束縛して関数を作る
    ->の代わりに=>を使うと、外側のthisの値が関数内にも引き継がれるようになります。
    この処理をthisの束縛やbindと呼びます。
###

cat =
  name: "タマ"
  speak: ->
    console.log "1: は#{@name}です"
    helper = =>
      console.log "2: 私は#{@name}です"
    helper()

cat.speak()