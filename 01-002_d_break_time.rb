# バイトの休憩時間 (paizaランク D 相当)
# https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__d_break_time

INPUT1 = <<~"EOS"
  9
EOS
OUTPUT1 = <<~"EOS"
  60 min
EOS
INPUT2 = <<~"EOS"
  6
EOS
OUTPUT2 = <<~"EOS"
  no break
EOS

def solve(input_str)
  # 入力
  h = input_str.to_i

  # 休憩時間
  rest_time = if h > 8
      60
    elsif h > 6
      45
    else
      "no break"
    end

  # 休憩時間の表示変換
  if rest_time.kind_of?(Integer)
    rest_time = "#{rest_time} min"
  end

  # 休憩時間を返す
  rest_time
end

puts solve(STDIN.read)

=begin
バイトの休憩時間 (paizaランク D 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/forest_contest_001/forest_contest_001__d_break_time
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
アルバイトの休憩時間には決まりがあり、

・勤務時間が6時間を超え、8時間以下であるときには、45分
・勤務時間が8時間を超えるときには、60分

の休憩時間を取ることが義務付けられています。


勤務時間が入力として与えられるので、休憩が発生するかどうかを調べ、

休憩時間が発生する場合には、休憩時間（分）を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます

h

・hは勤務時間


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
・休憩時間が発生しないときは、no break
・休憩時間が発生する場合には、x min
　（xは休憩時間(分)、xとminの間に空白を1つ含みます）
を出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

4 ≤ h ≤ 12

入力例1
9

出力例1
60 min

入力例2
6

出力例2
no break
=end
