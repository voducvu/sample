def quick_sort(array)
  return if array.size < 2
  sort_part array, 0, array.size - 1
end

def partition array, left, right, pivot
  while left < right do
    while array[left] < pivot
      left += 1
    end

    while array[right] > pivot
      right -= 1
    end

    if left <= right
      temp = array[left]
      array[left] = array[right]
      array[right] = temp
      left += 1
      right -= 1
    end
  end
  return left
end

def sort_part array, left, right
  return if left >= right
  pivot = array[(left + right)/2]
  break_point = partition array, left, right, pivot
  sort_part array, left, break_point - 1
  sort_part array, break_point, right
end
