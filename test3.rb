4.7.8 ＊で配列同士を非破壊的に連結する

  a = [1, 2, 3]

    [-1, 0, *a, 4, 5]

    # a の中身はかわっていない（非破壊的）


4.7.9 ＝＝で等しい配列かどうかはんだんする

  [1, 2, 3] == [1, 2, 3]
  [1, 2, 3] == [1, 2]

  # 中身の整合で真偽値の返り値は得られる


4.9.10 ％記法で文字列の配列を簡潔につくる

  %w!apple melon orange! 
  %w(apple melon orange)

  # スペースを目印にして簡潔に配列を作れる

4.7.11 文字列を配列に変換する

  "RUBY".chars
  "RUBY,JAVA,PERL,PHP".split(",")

  # ある文字列型を配列に区切る方法

4.7.12 配列に初期値を設定する

  a = Array.new(5)
  b = Array.new(5, 0)
  c = Array.new(10){|n| n }
  d = Array.new(10){|n| n % 3 + 1}
  
  # ブロックを指定すると、作られた配列のインデックス番号が入る

4.7.13 配列に初期値を設定する際の注意点

  a = Array.new(5, "default")

    str = a[0].upcase!
    # このとき a の要素全ては変更される

  a = Array.new(5) { "default" }

    str = a[0].upcase!
    # このとき a[0] のみ更新される

    なぜこうなるのか？
      a = ["a", "a", "a"]
      a[0].object_id
      a[1].object_id
        a[0] と a[1] は異なるオブジェクト
      a = Array.new(5, "default")
      a[0].object_id
      a[1].object_id
        a[0] と a[1] は同じオブジェクト

    # ブロックで初期値を与えることで初期値を異なるオブジェクトで生成する


4.7.14 ミュータブル？ イミュータブル？

  ・ミュータブル 破壊的メソッドで変更可能な型

  a = ["a", "b", "c"]

    a[0].upcase!
    # 文字列型はミュータブル

  ・イミュータブル 破壊的メソッドで変更出来ない型

  a = [:a, :b, :c]

    a[0].upcase! # エラー発生    
    # シンボルはイミュータブル