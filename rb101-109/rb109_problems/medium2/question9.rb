Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

6	2	7	1	4	Start: compare 6 > 2? Yes
2	6	7	1	4	Exchange
2	6	7	1	4	6 > 7? No (no exchange)
2	6	7	1	4	7 > 1? Yes
2	6	1	7	4	Exchange
2	6	1	7	4	7 > 4? Yes
2	6	1	4	7	Exchange
2	6	1	4	7	2 > 6? No
2	6	1	4	7	6 > 1? Yes
2	1	6	4	7	Exchange
2	1	6	4	7	6 > 4? Yes
2	1	4	6	7	Exchange
2	1	4	6	7	6 > 7? No
2	1	4	6	7	2 > 1? Yes
1	2	4	6	7	Exchange
1	2	4	6	7	2 > 4? No
1	2	4	6	7	4 > 6? No
1	2	4	6	7	6 > 7? No
1	2	4	6	7	1 > 2? No
1	2	4	6	7	2 > 4? No
1	2	4	6	7	4 > 6? No
1	2	4	6	7	6 > 7? No
1	2	4	6	7	No swaps; all done; sorted
We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

Examples

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

Question:
Write a method that takes an array and mutates its elemnts and returns a sorted array.

Input vs Output:
Input: array
Output: same array but sorted

Explicit vs Implicit Rules:
Explicit:
1) ending array would be same as array sorted
Implicit:
1) we want to iterate through array of integers and swap them everytime if first number is larger than the second
2) we are iterating through main array array.length - 1 times. because if the smallest number is the rihtmost number, it will only take 4 iterations to get it to the left

Data structure:
array

Algorithm:
bubble_sort!(array)

1) initialize variable 'round' with integer value 1
2) create an outer loop
3) initalize variable 'i' with integer value 0
4) create an inner loop
5) within inner loop, if array[i] > array[i + 1], switch the two elements
6) i += 1
7) break out of inner loop if i == array.size
8) once we're out of inner loop (meaning we've iterated through the array ONCE, add 1 to 'round')
9) break out of outer loop when round == array.size - 1
10) return array

def bubble_sort!(array)
  round = 1
  loop do
    i = 0
    loop do
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
      i += 1
      break if i == array.size - 1
    end
    round += 1
    break if round == array.size - 1
  end
end