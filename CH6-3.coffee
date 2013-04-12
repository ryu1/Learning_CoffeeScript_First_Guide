###
  テストを書く
###

expect = require 'expect.js'

###
  基本的なMochaのテストの書き方
###

class Recorder
  constructor: ->
    @data = ''

  append: (data) ->
    @data += data

  getLength: ->
    @data.length

  getHash: ->
    data: @data
    length: @data.length

  getArray: ->
    [@data, @data.length]

  reset: ->
    @data = ''

  reverse: ->
    console.log @data
    @data = @data.split('').reverse().join ''

  appendLater: (data) ->
    setTimeout =>
      @data += data
    , 500



# Recorderクラスを対象対象としたテストであるという宣言。実際にはどんな文字列でも構いません。
describe 'Recorder', ->
  rec = new Recorder

  # it(説目, 関数)
  # 第１引数で、どのようなテストかを完結メッセージで説明する。
  # 第２引数で、テスト内容を関数で渡します。
  it 'デフォルトのdataは空', ->
    # expect(実際の値).to.be(期待される値)
    expect(rec.data).to.be ''

  it 'append()を呼ぶとdataに追加される', ->
    rec.append 'Pretty'
    expect(rec.data).to.be 'Pretty'
    rec.append ' world'
    expect(rec.data).to.be 'Pretty world'

  it 'reverse()を呼ぶとdataが逆順に変わる', ->
    rec.reverse()
    expect(rec.data).to.be 'dlrow ytterP'

  it 'getLength()はdataの長さを返す', ->
    expect(rec.getLength()).to.be 12

  it 'reset()を呼ぶとdataが空になる', ->
    rec.reset()
    expect(rec.data).to.be ''
    rec.append 'Paradise'
    expect(rec.data).to.be 'Paradise'

  it 'appendLater()を読んだ1秒後にはdataが変化している', (done) ->
    rec.appendLater ' for us'
    setTimeout ->
      expect(rec.data).to.be 'Paradise for us'; done()
    , 1000

  it 'getHash()でハッシュを返す', ->
    expect(rec.getHash()).to.eql length:15, data:'Paradise for us'

  it 'getArray()で配列を返す', ->
    expect(rec.getArray()).to.eql ['Paradise for us', 15]

###
  MochaのBDD/TDDインターフェース
###

# TDDインターフェースによるRecorderクラスのテスト

suite 'Recorder', ->
  test 'constructor', ->
    rec = new Recorder
    expect(rec.data).to.be ''

  test '#append()', ->
    rec = new Recorder
    rec.append 'Pretty'
    expect(rec.data).to.be 'Pretty'
    rec.append ' world'
    expect(rec.data).to.be 'Pretty world'

  test '#getLength()', ->
    rec = new Recorder
    expect(rec.getLength()).to.be 0
    rec.data = 'Pretty'
    expect(rec.getLength()).to.be 6
    rec.data = 'Pretty world'
    expect(rec.getLength()).to.be 12

  test '#reset()', ->
    # BDDと違って、TDDだと、recの値は、引き継がれない。
    console.log rec
    rec = new Recorder
    rec.data = 'Pretty world'
    rec.reset()
    expect(rec.data).to.be ''

  test '#reverse()', ->
    rec = new Recorder
    rec.data = 'Pretty world'
    rec.reverse()
    expect(rec.data).to.be 'dlrow ytterP'

  test '#appendLater()', (done) ->
    rec = new Recorder
    rec.data = 'Pretty world'
    rec.appendLater ' for us'
    expect(rec.data).to.be 'Pretty world'

    setTimeout ->
      expect(rec.data).to.be 'Pretty world'
    , 400

    setTimeout ->
      expect(rec.data).to.be 'Pretty world for us'
      done()
    , 500

