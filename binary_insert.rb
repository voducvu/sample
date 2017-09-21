def bin_insert(a, v)
  pos = bin_search(a, v, 0, a.size - 1)
  if a[pos] < v
    pos += 1
  end
  a << nil
  i = a.size - 1
  while i > pos
    a[i] = a[i - 1]
    i -= 1
  end
  a[pos] = v
end

def bin_search(a, v, left, right)
  return left if left >= right
  mid = (left + right)/2
  if a[mid] < v
    bin_search(a, v, mid + 1, right)
  else
    bin_search(a, v, left, mid)
  end
end
