
def bubble_sort(array)
  step = 0
  right = array.size - 1
  while right > 0 do
    i = 0
    while i < right do
      if array[i] > array[i+1]
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
        step +=1
      end
      i += 1
    end
    right -= 1
  end
  puts step
end


def sel_sort(array)
  step = 0
  right = array.size - 1
  for i in 0..(right-1) do
    for j in (i+1)..right do
      if array[i] > array[j]
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
        step += 1
      end
    end
  end
  puts step
end

def insertion_sort(array)
  return array if array.size < 2
  cursor = 1
  while cursor < array.size do
    pos = cursor - 1
    temp = array[cursor]
    while pos >= 0 && temp < array[pos] do
      array[pos + 1] = array[pos]
      pos -= 1
    end
    array[pos + 1] = temp
    cursor += 1
  end
end

def merge_sort(array)
  left = 0
  right = array.size - 1
  return if left >= right
  middle = (left + right)/2

  sort_part(array, left, middle)
  sort_part(array, middle + 1, right)
  merge_part(array, left, right)
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
