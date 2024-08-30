def merge_sort(arr)
  # if arr is of size 1, it is sorted
  return arr unless arr.length.positive?
  return arr if arr.length == 1

  # sort the left half
  left = merge_sort(arr[0...arr.length / 2])

  # sort the right half
  right = merge_sort(arr[arr.length / 2..arr.length])

  # merge the sorted halves
  merged_arr = []
  arr.length.times do
    break merged_arr += right if left.empty?
    break merged_arr += left if right.empty?

    next merged_arr << left.shift if left[0] <= right[0]
    next merged_arr << right.shift if left[0] >= right[0]
  end

  return merged_arr
end

lengths = [5, 12, 50, 1, 2, 0]
lengths.each do |length|
  arr = []
  length.times { arr.push(Random.new.rand(100)) }
  puts "Array of length #{arr.length}:"
  puts "  Unsorted: #{arr}"
  puts "  Sorted: #{merge_sort(arr)}"
  puts ''
end
