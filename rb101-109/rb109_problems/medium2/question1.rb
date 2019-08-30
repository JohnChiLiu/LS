Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.

Question:
Write a method that takes a string input and returns the longest sentence.

Input vs Output:
Input: string
Output: string

Explicit vs Implicit Rules:
Explicit:
1) Return the longest sentence that is separated by a comma, period, or exclamation mark
Implicit:
N/A

Data Structure:
1) separate strings in to array using split method

Algorithm:
longest_sentence method

1) invoke split method on string input using ("\n\n"), this will split all paragraphs that are separated by 2 lines
2) invoke map method, invoke size on each element
3) invoke max method on resulting array and return result

updated algorithm
1) invoke split method on string input using ("\n\n"), this will split all paragraphs that are separated by 2 lines
2) invoke max_by (which would return object with maximum value from block)
3) within do..end block, we have paragraphs now within each element of the array.
4) element.size

def longest_sentence(string)
  puts string.split("\n\n").max_by {|paragraph| paragraph.split.size} 
end