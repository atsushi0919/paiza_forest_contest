# 競輪のユニフォーム (paizaランク D 相当)
# https://paiza.jp/works/mondai/forest_contest_002/forest_contest_002__d_keirin

def solve(input_str)
  # 色の設定
  colors = %w(white black red blue yellow green orange pink purple)
  # 入力
  n = input_str.to_i

  # 番号に対応した色を返す
  colors[n - 1]
end

puts solve(STDIN.read)

=begin
競輪のユニフォーム (paizaランク D 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_002/forest_contest_002__d_keirin
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
競輪の選手は、遠くからでも見分けがつくように、鮮やかな単色のユニフォームを着用しています。

ユニフォームの色は、車番と呼ばれる、各選手に割り当てられた番号によって決まっています。

1番車 : 白
2番車 : 黒
3番車 : 赤
4番車 : 青
5番車 : 黄
6番車 : 緑
7番車 : オレンジ
8番車 : ピンク
9番車 : 紫

入力として車番が与えられるので、その選手のユニフォームの色を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

n


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
nが
・1のとき、white
・2のとき、black
・3のとき、red
・4のとき、blue
・5のとき、yellow
・6のとき、green
・7のとき、orange
・8のとき、pink
・9のとき、purple
を出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

1 ≤ n ≤ 9

入力例1
2

出力例1
black

入力例2
5

出力例2
yellow
=end
