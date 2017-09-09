def merge_sort(array)
  return if array.size < 2
  sort_part array, 0, array.size - 1
end

def sort_part(array, left, right)
  return if left >= right
  middle = (left + right)/2
  sort_part(array, left, middle)
  sort_part(array, middle + 1, right)
  merge_part(array, left, right)
end

def merge_part(array, left, right)
  middle = (left + right)/2
  left_finger = left
  right_finger = middle + 1
  temp = []
  while (left_finger <= middle) && (right_finger <= right) do
    if array[left_finger] < array[right_finger]
      temp << array[left_finger]
      left_finger += 1
    else
      temp << array[right_finger]
      right_finger += 1
    end
  end
  temp += array[left_finger..middle] if left_finger <= middle
  temp += array[right_finger..right] if right_finger <= right
  array[left..(left+temp.size-1)] = temp
end
