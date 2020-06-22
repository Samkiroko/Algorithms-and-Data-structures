# frozen_string_literal: true

# Balanced Brackets
# There are 3 kinds of Brackets: [] {} (). Given a String  of characters, check if all the brackets in the String are Balanced. A  string is balanced if all the start and end brackets are in a correct  order so they match each other.
# Here are some balanced Strings:

# {}
# (hello)[world]
# [({}{}{})([])]

# Here are some Unbalanced ones:

# (hello - no ending )
# ([)] - The [ is improperly enclosed in the ().
# )( - There's an ending ) without a ( before it.

# Return true if a line is balanced and false otherwise.

# Examples

# The following are 3 test cases:

# puts balanced_brackets?('(hello)[world]')
# # => true

# puts balanced_brackets?('([)]')
# # => false

# puts balanced_brackets?('[({}{}{})([])]')
# # => true

def balanced_brackets?(string)
  arr = string.split('').select { |el| ['[', ']', '{', '}', '(', ')'].include? el }

  return false if arr.length == 1

  stack = []
  i = 0
  while i < arr.length
    if ['[', '{', '('].include?(arr[i])
      stack.push(arr[i])
    else
      return false if stack.empty?

      top = stack.pop

      return false if (top == '[' && arr[i] != ']') || (top == '(' && arr[i] != ')') || (top == '{' && arr[i] != '}')
    end
    i += 1
  end
  true
end

puts balanced_brackets?('(hello')
# => true


puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true