###
  分割代入
###

###
  分割代入の基礎知識
    代入の左辺に配列リテラルやオブジェクトリテラルを使うと、既存の配列やオブジェクトの一部を変更することができます。
###

# 変数を入れ替える
x = 15

y = 30

[x, y] = [y, x]

console.log x # 30
console.log y # 15

# 配列の要素を変数に取り出す

[first, middle..., last] = "internationalization"

console.log first # 結果はi
console.log middle.length # 結果は18
console.log last # 結果はn

# オブジェクトリテラルのプロパティを変数に取り出す

response =
  status: 200
  body: '<html>...</html>'
  headers:
    'Content-Type': 'text/html'
    'Content-Length': '3028'

{ status, body, headers } = response

console.log status # 200
console.log body # <html>...</html>
console.log headers['Content-Type'] # text/html

###
  分割代入の応用
###

# 置換前
MyModule = require('MyModule').MyModule

# 置換後
{MyModule} = require 'MyModule'