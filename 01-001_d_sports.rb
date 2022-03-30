# スポーツの人数 (paizaランク D 相当)
# https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__d_sports

def solve(input_str)
  # 球技の人数
  count_table = { "baseball" => 9,
                  "soccer" => 11,
                  "rugby" => 15,
                  "basketball" => 5,
                  "volleyball" => 6 }
  # 球技名入力
  s = input_str.chomp

  # 入力された球技の人数を返す
  count_table[s]
end

p solve(STDIN.read)

=begin
スポーツの人数 (paizaランク D 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__d_sports
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
スポーツ名が与えられたときに、そのスポーツの1チームの人数を表示するプログラムを作成してください。

ただし、各スポーツの競技人数は以下であるとします。
・野球：9人
・サッカー：11人
・ラグビー：15人
・バスケットボール：5人
・バレーボール：6人

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

s

sはスポーツ名


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
入力されたスポーツの1チームの人数を出力してください。
ただし、各スポーツの1チームの人数は以下であるものとします。
baseball : 9
soccer : 11
rugby : 15
basketball : 5
volleyball : 6

条件
すべてのテストケースにおいて、以下の条件をみたします。

sは、
baseball または、
soccer または、
rugby または、
basketball または、
volleyball のいずれかの文字列

入力例1
baseball

出力例1
9
=end
