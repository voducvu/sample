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
