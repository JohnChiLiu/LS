What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7) ==> Error because no value at index 7
puts a.fetch(7, 'beats me') => outputs beats me because of default value in parameter
puts a.fetch(7) { |index| index**2 } => 49 because returns value returned by block

Answer:
Use documentation from this link
