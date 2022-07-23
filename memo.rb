 require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.to_i
 
    #続きを書いていきましょう！！(ifで条件分岐)
    if memo_type == 1
      puts "拡張子を除いたファイルを入力してくでさい"
      
     file_name = gets.chomp
      
     puts "メモの内容を記述してください,
     Ctrl+Dで保存します。"
     memo = STDIN.read
    
      
      CSV.open("#{file_name}.csv","w") do |csv|
     csv.puts ["#{memo}"]
end    

      elsif memo_type == 2
          file_neme = gets.chomp
          puts  "Ctrl + D を推奨します"
           memo = STDIN.read
           CSV.open("#{file_name}.csv", "a") do |csv|
    csv.puts ["#{memo}"]
     
  end
end
   