In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

Examples:

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

Question: Write a method that computes fibonacci sequence procedurally.

Input vs Output:
Input: integer
Output: integer

Explicit vs Implicit Rules:
Explicit:
1) a fibonacci number is the sum of the two numbers preceding it in the sequence.
Impliciti:
N/A

Data Structures:
1) None

Algorithm:
fibonacci method with 'num' argument

1) set variable 'num_1' to 1
2) set variable 'num_2' to 1
3) set variable 'counter' to 3
4) set variable 'integer' to 0
4) set a loop, while counter is lesser than or equal to the argument integer 'num'
5) integer = num_1 + num_2
6) num_1 = num_2
7) num_2 = integer
8) counter += 1
9) end loop
10) return integer

def fibonacci(num)
  num_1 = 1
  num_2 = 1
  counter = 3
  integer = 0

  while counter <= num
    integer = num_1 + num_2
    num_1 = num_2
    num_2 = integer
    counter += 1
  end
  return integer
end

LS solution:
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end