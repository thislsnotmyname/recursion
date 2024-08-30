def fibs(length)
  arr_of_fibs = [0, 1]
  previous_num = 0
  current_num = 1
  (length - 2).times do
    arr_of_fibs << current_num + previous_num
    previous_num, current_num = [current_num, current_num + previous_num]
  end
  arr_of_fibs[0..length - 1]
end

def fibs_rec(length, arr = [0, 1])
  return arr if length <= 2
  num1, num2 = [arr[arr.length - 1], arr[arr.length - 2]]
  arr << num1 + num2
  fibs_rec(length - 1, arr)
end

p "Iteratively: #{fibs(8)}"
p "Recursively: #{fibs_rec(8)}"
