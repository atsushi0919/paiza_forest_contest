# セール販売 (paizaランク C 相当)
# https://paiza.jp/works/mondai/forest_contest_002/forest_contest_002__c_sale

INPUT1 = <<~"EOS"
  3
  shirt 1000
  shoes 2000
  shirt 500
EOS
OUTPUT1 = <<~"EOS"
  3500
EOS
INPUT2 = <<~"EOS"
  4
  shirt 500
  pants 1000
  pants 500
  shoes 2000
EOS
OUTPTU2 = <<~"EOS"
  3500
EOS

def solve(input_str)
  # 値引き条件対象
  target = "pants"
  # 入力
  _, *items = input_str.split("\n")

  # 合計金額計算
  pants = false
  total = 0
  items.each do |item|
    kind, price = item.split
    pants = true if kind == target
    total += price.to_i
  end
  # 値引き計算
  total -= 500 if pants && total >= 2000

  # 合計金額を返す
  total
end

puts solve(STDIN.read)

=begin
セール販売 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_002/forest_contest_002__c_sale
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
ある服屋さんはズボンの在庫を抱えてしまったため、以下のようなセールを行うことにしました。

・ズボンを一点以上買っていて、
・2000円以上お買い上げ
の方は合計金額から500円引き。

あるお客さんの購入アイテムが入力されるので、

セール割引を適用したあとの合計金額を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

n
c_1 p_1
c_2 p_2
...
c_n p_n

・購入アイテム数n
・c_1, c_2, ..., c_n はアイテム名（shirt または pants　または shoes のいずれか）
・p_1, p_2, ..., p_n はそのアイテムの金額


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
購入アイテムの合計金額を出力してください。
ただし、
・ズボン（pants）を一点以上買っていて、
・合計金額が2000円以上
の場合は合計金額を500円引きして出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

1 ≤ n ≤ 10
200 ≤ p_1, p_2, ..., p_n ≤ 4000

入力例1
3
shirt 1000
shoes 2000
shirt 500

出力例1
3500

入力例2
4
shirt 500
pants 1000
pants 500
shoes 2000

出力例2
3500
=end
