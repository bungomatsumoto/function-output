

def linear_search(numbers, target_number)
  # この部分を記述してください
  i = 0
  while i < numbers.length
    if numbers[i] == target_number
      return i
    end
    i += 1
    end
    "None"
end

# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する

puts(linear_search(numbers, target_number))



# 二分探索法
def binary_search(numbers, target_number)
  # この部分を記述してください
  i = 0
  last = numbers.length - 1
  while i <= last
    center = ((i + last) / 2.0).round
    if numbers[center] == target_number
      return center
    elsif numbers[center] < target_number
      i = center + 1
    elsif numbers[center] > target_number
      last = center - 1
    end
    end
    "None"
end

# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する

puts(linear_search(numbers, target_number))
