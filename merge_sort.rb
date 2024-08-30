def merge_sort(arr)
  # if arr is of size 1, it is sorted
  return arr if arr.length == 1

  # sort the left half
  left = merge_sort(arr[0...arr.length / 2])

  # sort the right half
  right = merge_sort(arr[arr.length / 2...arr.length])

  # merge the sorted halves
  merged_arr = []
  arr.length.times do
    break merged_arr += right if left.empty?
    break merged_arr += left if right.empty?

    next merged_arr << left.shift if left[0] < right[0]
    next merged_arr << right.shift if left[0] > right[0]
  end

  return merged_arr
end

arr = []
8.times { arr.push(Random.new.rand(100)) }
p merge_sort(arr)
