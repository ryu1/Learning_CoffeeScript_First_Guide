###
  CakeとCakefileでビルド環境を作る
###

###
  タスクを作る
    task タスク名, タスクの説明, (Options) ->
      実行する処理

    cake タスク名
###

exec = require('child_process').exec

task 'build', 'すべての.coffeeファイルをコンパイルします', (Options) ->
  exec "coffee -c *.coffee"

###
  cake build
###


###
  オプションを指定する
    option SHORT-FLAG, LONG-FLAG, DESCRIPTION
###

option '-o', '--o [DIR]', '出力先ディレクトリ'

exec = require('child_process').exec

task 'build', 'プロジェクト全体をビルドします', (options) ->
  outdir = options.output ? 'lib'
  exec "coffee -co #{outdir} src"

###
  cake -o bin build
###

###
  ほかのタスクを呼び出す
###

task 'all', '全てをビルドします', (options) ->
  invoke 'build'
