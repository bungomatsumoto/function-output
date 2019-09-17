# def repeat_string(str)
#   #以下にコードを記述する
#   # lettercount = str.split("")
#   lettercount = str.split("").count
#   if lettercount >= 5
#     rep_word = str.slice(0,4)
#   else
#     rep_word = str
#   end
#     p rep_word + rep_word + rep_word
#     # 連結数が増える時には使えない
# end
#
# repeat_string('Python')
# repeat_string('Go')
# repeat_string('C++')



def hoge
  for i in 1..40
    puts i
    # 上記：1から40までを出力する処理
    if i = i % 3 ==0
      i = "Hoge"
    elsif i.to_s.include?("3")
      i = "Hoge"
    end
    # 上記：例外的にHogeを出力する条件
  end
end

hoge


def inversion(str)
  str.split("")
  配列内の大文字と小文字を判別
  if str.upcase == str
  puts str.downcase
  else
  puts str.upcase
  end
end

inversion(abCD)
