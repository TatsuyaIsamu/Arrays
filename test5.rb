4.8.5 ブロックローカル変数

  numbers = [1, 2, 3, 4]
  sum = 0
  numbers.each do |n; sum|
    sum = 10
    sum += n
    p sum 
  end
  sum  # ブロック外なので sum = 0 になる

4.8.6 繰り返し処理以外でも使用されるブロック

  sample.rb 参照

4.8.7 do..end と {} の結合度の違い

  a = [1, 2, 3]

    a.delete(10) do
      "NG"
    end
    a.delete 10 do
      "NG"
    end

    a.delete 10 { "NG" } # エラー発生
    a.delete (10) { "NG" }

    # {} は前後との結合度が強いので前後の引数を () で区別する必要がある


4.8.8 ブロックを使うメソッドを定義する

  names = ["田中", "鈴木", "佐藤"]
  names.map{|name| "#{name}さん"}.join("と")

  # チェーンメソッド