# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# * After k iterations, checking last k elements are redundant as they will already be sorted
# * Flag/counter for any swaps done during an iteration
# array[a], array[b] = array[b], array[a]


def bubble_sort(array)

  length = array.length - 1
  swapped = true

  until swapped == false do
    for i in 1..length do
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      else
        swapped = false
      end
    end
    length = length - 1 
  end

p array
end

bubble_sort([4,3,78,2,0,2])
bubble_sort([213,3,8,1,42,0,1,88,5])
