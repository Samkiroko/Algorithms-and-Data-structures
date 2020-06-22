# Transposition
# A Transposition Error is when two letters are swapped, such as in "hte" instead of "the", or "rign" instead of "ring".
# Given a string of characters, can you fix every place where "gn"  appears so it becomes "ng" instead? If there are multiple "g"s in a row,  the "n" should be swapped with the first "g". No "gn" should appear in  the final text, so be careful with all possibilities!

# Full Credit

# Try to solve this challenge with only one pass through the text.

# Examples

# The following are 3 test cases:

# puts transpose('he was searchign on Bign for signign kigns')
# # => he was searching on Bing for singing kings

# puts transpose('rignadingdiggn!')
# # => ringadingdingg!

# puts transpose('gngngnnggnngggnnn')
# # => nnnnnnnnngggggggg


def transpose(string)
  i = 0
  while i < string.length
    j = 0
    while j < string.length
      if string[j] == 'g' && string[j + 1] == 'n'
        string[j] = 'n'
        string[j + 1] = 'g'
      end
      j += 1
    end
    i += 1
  end
  string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg