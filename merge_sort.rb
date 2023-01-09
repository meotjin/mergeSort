def merge(array)
  return array if array.size == 1

  left = merge(array[0..array.size / 2 - 1])
  right = merge(array[array.size / 2..array.size - 1])

  sorted = []

  until left.empty? && right.empty?
    if left.empty?
      sorted += right
      right = []
    elsif right.empty?
      sorted += left
      left = []
    else
      lowest = left[0] > right[0] ? right.shift : left.shift
      sorted.push lowest
    end
  end

  sorted
end
