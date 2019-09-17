
# Ruby新シリーズ演習1
# 「処理」は演算子のみでもいい？
def lettercount(word)
  count = 0
  word.split("").each do |counter|
   count = count + 1
   # 処理「+ 1」を配列の個数分だけ繰り返す
   # 1: count = 0 + 1
   # 2: 1 + 1
   # 3: 2 + 1
   # 4: 3 + 1
   # 5: 4 + 1
   # 6: 5 + 1
   # 7: 6 + 1
   # 8: 7 + 1
   # 9: 8 + 1
   # 10: count = 9 + 1
 end
  return count
end

p lettercount("helloworld")
