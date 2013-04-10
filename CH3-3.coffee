###
  存在演算子
###

###
  変数や関数が存在するか調べる
    falseになる値(Javascript)
    var total = 0;
    if (0) {
      total++;
    }
    if (NaN) {
      total++;
    }
    if ('') {
      total++;
    }
    if (null) {
      total++;
    }
    if (undefined) {
      total++;
    }
    console.log(total); # 0になる
###

num = 0

# 変数が初期化されているか調べたいとき、if (変数)と記述してしまうと、変数に0が代入されている場合にもfalseと判定されてしまう。
if num
  console.log "1: true"
else
  console.log "1: false"

# 変数名や関数名の後に?をつけるとその変数または関数が存在し、nullでもundefinedでもない値が入っているかどうかチェックできます。
if num?
  console.log "2: true"
else
  console.log "2: false"

if someVar?
  console.log "3: true"
else
  console.log "3: false"

###
  プロパティーに安全にアクセスする
    userがnullまたはundefinedである場合は、theIdにundefinedが代入され、それ以外の場合はuser.idが代入されます。
###

theId = user?.id
console.log theId # undefined

###
  関数を安全に呼び出す
    関数を呼び出すとき関数名の直後に?を付けると、その関数が存在する場合のみ実行されます。
    関数が存在するかわからないが存在すれば実行したい、という場合に便利です。
###

fancyFunction? arg

###
  条件付き代入
###

###
  代入で?=演算子を使うと、左辺の値がnullかundefinedの場合にのみ右辺の値を代入されます。
###
# nullなら代入する
str = '';
str ?= 'default' # strには、''が代入されていて、nullでもundefinedでもないので、'default'は代入されない。
console.log "strは#{str}" # strは''

###
  ||=演算子を使うと0や空文字列など、falseっぽい値の場合にも代入されます。
###

str = ''
str ||= 'default'
console.log "strは#{str}" # strは'default'

###
  ２つの値のいずれかを選択する
    ?を２つの値の間に置くと、左の値がnullでもundefinedでない場には左の式の値となり、それ以外の場合には右の値が式の値となります。
###

nickname = name ? "匿名"
console.log "nicknameは#{nickname}"

nickname = if name? then name else "匿名"
console.log "nicknameは#{nickname}"

# 間違った?の使い方
#answer = isCorrect ? "yes" : "no"
#console.log "answerは#{answer}"

# 三項演算子の代わりにif/then/elseを使う
answer = if isCorrect then "yes" else "no"
console.log "answerは#{answer}"