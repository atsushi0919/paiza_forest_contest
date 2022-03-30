# 背番号順 (paizaランク C 相当)
# https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__c_player_number

INPUT1 = <<~"EOS"
  3
  83 PAIZA
  11 SUZUKI
  90 TANAKA
EOS
OUTPUT1 = <<~"EOS"
  11 SUZUKI
  83 PAIZA
  90 TANAKA
EOS
INPUT2 = <<~"EOS"
  5
  31 SAITO
  56 GORO
  11 IIJIMA
  70 NAKAMURA
  1 HAJIME
EOS
OUTPUT2 = <<~"EOS"
  1 HAJIME
  11 IIJIMA
  31 SAITO
  56 GORO
  70 NAKAMURA
EOS

def solve(input_str)
  # 入力
  _, *players = input_str.split("\n")

  # 選手リスト作成
  players.map! do |player|
    number, name = player.split
    [number.to_i, name]
  end

  # 背番号順の選手リストを返す
  players.sort.map { |player| player.join(" ") }
end

puts solve(INPUT2)

=begin
背番号順 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__c_player_number
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
n人の野球選手の名前が背番号と一緒に入力されます。

各選手の背番号と名前を、背番号の数字の小さい順に並び替えて出力してください。

ただし、同じ背番号の選手は存在しないものとします。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

n
b_1 p_1
b_2 p_2
...
b_n p_n

・入力される文字列数n
・b_1, b_2, ..., b_n は各選手の背番号
・p_1, p_2, ..., p_n は選手名で、大文字のアルファベットからなる文字列
・入力はn + 1行となり、末尾に改行を一つ含みます。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
背番号と選手名を背番号の昇順に並び替えて出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

1 ≤ n ≤ 20
0 ≤ b_1, b_2, ..., b_n ≤ 99
b_1 ≠ b_2 ≠ ... ≠ b_n
3 ≤ (p_1の長さ), (p_2の長さ), ..., (p_nの長さ) ≤ 10

入力例1
3
83 PAIZA
11 SUZUKI
90 TANAKA

出力例1
11 SUZUKI
83 PAIZA
90 TANAKA

入力例2
5
31 SAITO
56 GORO
11 IIJIMA
70 NAKAMURA
1 HAJIME

出力例2
1 HAJIME
11 IIJIMA
31 SAITO
56 GORO
70 NAKAMURA
=end
