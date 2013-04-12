###
  文字列用の関数
###

_ = require 'underscore'

###
  escape
    _.escape string
    HTML用に文字列stringをエスケープした文字列を返します。
    &, <, >, ", ', /の各文字がエスケープされます。
###

console.log _.escape '<div id="name">Cow & Chichen</div>'

###
  template
    _.template(string, [context])
    テンプレートを元に文字列を生成して返します。
    テンプレートの記述方法は次のとおりです。
    <%- ... %>と書くと評価結果がHTMLエスケープされて埋め込まれます。
    <% ... %>と書くとその部分に記述したJavaScriptが実行されます。

    この関数は、contextを指定する場合と指定しない場合とで２種類の使い方があります。

    contextにオブジェクトを指定した場合、それをテンプレートstring内において
    変数として使うことができます。
    再利用しないテンプレートを使う場合に便利です。
###

# テンプレートとオブジェクトから文字列を作る

console.log _.template '<div><%- name %></div>', { name: "<span>パリ</span>>" }

console.log _.template '<div><%= name %></div>', { name: "<span>パリ</span>" }

# テンプレートを描画する関数を作って返す。

renderer = _.template "<%= greeting %>, <%= name %>."

console.log renderer ({ greeting:"Good morning", name: "Kenta" })
console.log renderer greeting:"Good night", name:"Lucy"