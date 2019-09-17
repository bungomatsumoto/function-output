def greeting
   puts "おはようございます"
   puts "こんにちは"
   puts "こんばんわ"
 end

 greeting

 def add(n,y)
   result = n + y
   if result < 50
     return "50より小さい"
   end
   return "50以上です"
 end

puts add(40,20)
