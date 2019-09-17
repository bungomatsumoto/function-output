def selection_sort(numbers)

  i = 0
  while i < (numbers.length) -1 do
    # 配列の移動を目で確認するためのp(number)
    p(numbers)
    indexMin = i
    k = i + 1
    while k < (numbers.length) do
      if numbers[k] < numbers[indexMin]
        # numbers[k]の中に入っている値が、最小の値ということになる
        # なので、kの値（index番号）をindexMinに移す
        indexMin = k
      end
      k += 1
    end
    # すべてのループが終わったあと、numbers[indexMin]に入っている値が、
    # すべて調べた中で最小の値、ということになるので、それを一番左に移す
    numbers[indexMin], numbers[i] = numbers[i], numbers[indexMin]
    i += 1
  end
  p(numbers)
end

selection_sort([12, 13, 11, 14, 10])

11, 13, 12, 14, 10

[12, 13, 11, 14, 10]
[10, 13, 11, 14, 12]while k < (numbers.length) do
[10, 11, 13, 14, 12]
[10, 11, 12, 14, 13]
[10, 11, 12, 13, 14]




def factorial(n)
  return 1 if n == 0
  return n * factorial(n - 1)
end
p factorial(5) #=> 120

factorial(5)
-> 5 * factorial(4)
-> 5 * 4 * factorial(3)
-> 5 * 4 * 3 * factorial(2)
-> 5 * 4 * 3 * 2 * factorial(1)
-> 5 * 4 * 3 * 2 * 1 * factorial(0)
factorial(0)は1を返す(置き換えはこれでオシマイ)から
-> 5 * 4 * 3 * 2 * 1 * 1
