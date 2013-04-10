###
  引数の扱い
###

###
  引数を可変長で受け取る可変長引数
###

printKeys = (username, keys...) ->
  for key in keys
    console.log "#{username}: key"

printKeys 'user1', 'key1', 'key2', 'key3'

###
  配列の展開
###

printArgs = (a, b, c) ->
  console.log "a=#{a} b=#{b} c=#{c}"

keys = [ 'key1', 'key2', 'key3' ]

printArgs keys...

###
  argumentsを配列に変換する
    argumentsは、配列ではなくオブジェクト
###

# argumentsオブジェクトは引数リストをもつ
func = (a, b, c) ->
  for arg, i in arguments
    console.log "arguments[#{i}]: #{arg}"

func 'argu1', 'argu2', 'argu3'

# argumentsを配列に変換する
func = (a, b, c) ->
  args = [arguments...]
  console.log args.join ', '

func 'arg1', 'arg2', 'arg3'



