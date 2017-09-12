def left_child array, index
  2*index + 1
end

def right_child array, index
  2*index + 2
end

def has_left_child array, index
  array.size > left_child(array, index)
end

def has_right_child array, index
  array.size > right_child(array, index)
end

def parent array, index
  (index - 1)/2
end

def swap array, left, right
  temp = array[left]
  array[left] = array[right]
  array[right] = temp
end

def add array, value
  array << value
  heapify_up array
end

def remove array
  item = array[0]
  array[0] = array[-1]
  array.slice! -1
  heapify_down array
  item
end

def heapify_up array
  index = array.size - 1
  parent_index = parent array, index
  while parent_index >= 0 && array[parent_index] > array[index]
    swap array, index, parent_index
    index = parent_index
    parent_index = parent array, index
  end
end

def heapify_down array
  index = 0
  while has_left_child(array, index)
    left = left_child array, index
    if has_right_child(array, index)
      right = right_child array, index
      break if array[right] > array[index] && array[left] > array[index]
      next_index = array[right] < array[left] ? right : left
      swap array, index, next_index
      index = next_index
    else
      break if array[left] > array[index]
      swap array, index, left
      index = left
    end
  end
end

def heap_sort array
  heap = []
  array.each {|item|  add heap, item }
  index = 0
  while heap.size > 0
    array[index] = remove(heap)
    index += 1
  end
end

