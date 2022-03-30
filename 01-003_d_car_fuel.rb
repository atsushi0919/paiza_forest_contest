# 自動車の燃費 (paizaランク D 相当)
# https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__d_car_fuel

INPUT1 = <<~"EOS"
  65 600
EOS
OUTPUT1 = <<~"EOS"
  9
EOS
INPUT2 = <<~"EOS"
  36 831
EOS
OUTPUT2 = <<~"EOS"
  23
EOS

def solve(input_str)
  # 入力
  v, d = input_str.split.map(&:to_i)

  # 燃費を返す
  d.div(v)
end

puts solve(STDIN.read)

=begin
自動車の燃費 (paizaランク D 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__d_car_fuel
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
自動車の実燃費を調べたいと思ったとき、以下のような手順で調べることができます。

1. 燃料を満タンにし、給油量を記録する
2. 給油が必要になるまでの走行距離を記録する
3. （記録した走行距離）/（記録した給油量）を計算する


給油量と（L）と記録した走行距離（km）が入力として与えられるので、

上の方法で燃費（km/L）を計算して出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

v d

・vは給油量（L）を表す整数値
・dは記録した走行距離（km）を表す整数値


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
自動車の燃費（km/L）を計算し、出力してください。

ただし、燃費は小数点以下を切り捨てて出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

20 ≤ v ≤ 100
300 ≤ d ≤ 1500

入力例1
65 600

出力例1
9

入力例2
36 831

出力例2
23
=end