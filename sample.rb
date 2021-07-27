File.open("./sample.txt", "w") do |file|
  file.puts("追加テキスト1")
  file.puts("追加テキスト2")
  file.puts("追加テキスト3")
end

# File.open メソッドは外部リソースを使用するのでブロックを使うことでスコープを作る