def selection_sort(array)
  right = array.size - 1
  for i in 0..(right-1) do
    for j in (i+1)..right do
      if array[i] > array[j]
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      end
    end
  end
end
