Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words 
and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

Example

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

Question:
Write a method that takes user input and outputs a sentence.

Explicit vs Implicit Rules:
Explicit:
1) Include a noun, verb, adjective, and adverb
Implicit:
N/A

Input vs Output:
Input: user input
Output: string

Algorithm:
message method

1) Output message asking for noun: 
2) set user response to variable 'noun'
3) Output message asking for verb:
4) set user response to variable 'verb'
5) Output message asking for adjective: 
6) set user response to variable 'adjective'
7) Output message asking for adverb: 
8) set user response to variable 'adverb'
9) create message with string interpolation

def message
  puts "Enter a noun:"
  noun = gets.chomp()
  puts "Enter a verb:"
  verb = gets.chomp()
  puts "Enter an adjective:"
  adjective = gets.chomp()
  puts "Enter an adverb:"
  adverb = gets.chomp()
  puts "Should you #{adverb} #{verb} your #{adjective} #{noun} on a walk?"
end