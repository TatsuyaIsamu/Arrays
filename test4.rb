4.8.1 添え字付きの繰り返し処理

  fruits = ["apple", "orange", "melon"]

    fruits.each_with_index {|fruit, i| puts "#{i}: #{fruit}"}

4.8.2 with_index メソッドを使った添え字付きの繰り返し処理

  fruits = ["apple", "orange", "melon"]

    fruits.map.with_index {|fruit, i| "#{i}:#{fruit}"}
    fruits.delete_if.with_index {|fruit, i| fruit.include?("a") && i.odd? }

4.8.3 添え字を０以外の数値から開始させる

fruits = ["apple", "orange", "melon"]

  fruits.each.with_index(1) {|fruit, i| puts "#{i}: #{fruit}"}
  fruits.map.with_index(10) {|fruit, i| "#{i}: #{fruit}"}
  # 引数の値からインデックス番号がスタートする

4.8.4 配列がブロック引数に渡される場合

  dimentions = [
    [10, 20],
    [30, 40],
    [50, 60],
  ]
  areas = []

    dimentions.each do |length, width|
      areas << length * width
    end
    areas -- # → [200, 1200, 3000]
    dimentions.each_with_index do |(length, width), i|
      puts "length: #{length}, width: #{width}, i: #{i}"
    end 


