###
  レンジ
###

###
  レンジの基礎知識
    [数値..数値]という表記で、連続する値を持った配列を簡単に作れます。
###

# レンジを使って配列を作る

months = [1..12]

# 数字の大小は、逆でもかまいません
# 数値が小さくなっていく配列

countdown = [10..0]

# 最後の値を含まない配列

digits = [0...10] # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

###
  配列を部分的に切り出す
###

week = ['日', '月', '火', '水', '木', '金', '土']

weekdays = week{1..5] # 結果は['月', '火', '水', '木', '金']

###
  配列を部分的に入れ替える
###

members = [ 'Yuko', 'Atsuko', 'Mariko', 'Tomomi', 'Mayu']

members[0..3] = ['Atsuko', 'Yuko', 'Yuki', 'Mariko'] # membersは、['Atsuko', 'Yuko', 'Yuki', 'Mariko', 'Mayu']

###
  末端までのレンジ
###

ranking = ['A', 'B', 'C', 'D', 'E']

winners = ranking[..2] # winnersは、['A', 'B', 'C']

others = ranking[3..] # othersは、['D', 'E']

copy = ranking[..] # copyは、 ['A', 'B', 'C', 'D', 'E']
