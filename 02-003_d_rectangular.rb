# 長方形の面積 (paizaランク D 相当)
# https://paiza.jp/works/mondai/forest_contest_002/forest_contest_002__d_rectangular

def solve(input_str)
  # 入力
  e1, e2 = input_str.split.map(&:to_i)

  # 面積計算
  s = e1 * e2

  # 面積 s または invalid を返す
  s > 0 ? s : "invalid"
end

puts solve(STDIN.read)

=begin
長方形の面積 (paizaランク D 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_002/forest_contest_002__d_rectangular
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
長方形の隣接する2辺の長さが入力として与えられます。

長方形の面積を計算して出力してください。


ただし、長さ0の辺がある場合には invalid と出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

e1 e2

・e1, e2は、隣接するそれぞれの辺の長さ（0以上の整数）


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
長方形の面積（e1 × e2）を計算して出力してください。

ただし、e1 もしくは e2 が 0 の場合には invalid と出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

0 ≤ e1, e2 ≤ 20

入力例1
7 5

出力例1
35

入力例2
0 10

出力例2
invalid
=end
