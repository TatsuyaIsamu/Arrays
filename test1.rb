4.7.1 さまざまな要素の取得方法

  arr = [1, 2, 3, 4, 5]

    arr[1, 3]
    arr.values_at(0, 2, 4)
    arr[a.size - 1] 
    arr[-1]
    arr[-2, 2]
    arr.last
    arr.first


4.7.2 様々な要素の変更方法

  arr = [1, 2, 3, 4]

    arr[-3] = -10
    arr[-5] = 1 # エラー発生

  arr= []

    arr.push(1)
    arr.push(2,3)

  arr = [1, 2, 3, 1, 2, 3]

    arr.delete(2) # arr = [1, 3, 1, 4] になる
    arr.delete(10)  # エラー発生


4.7.3 配列の連結

  arr1 = [1]
  arr2 = [2, 3]

    arr1.concat(arr2) # arr1 は変更される（破壊的）    
    arr1 + arr2  # arr1 は変更されない（非破壊的）


