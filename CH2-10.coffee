###
  演算子
    CoffeeScript    JavaScript
    is              ===
    isnt            !==
    not             !
    and             &&
    or              ||
    @,this          this
    true, yes, on   true
    false, no. off  false
    of              in
    in              (対応なし)

    this.valueと@valueどちらの書き方も可能です。
    !, &&, ||の各演算子は、CoffeeScriptでも同様に使えます。
###

###
  連鎖比較
###

# 13以上19以下
isTeenager = 13 <= age <= 19

