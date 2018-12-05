# Authoring recursive algorithms. Add comments including time and space complexity for each method.
def factorial(n)
  if n == 0
    return 1
  end

  return n * factorial(n-1)
end



def reverse(s)
  if s.nil?
    return nil
  else
    rev_str = ""
    n = s.length
    reverse_help(s, rev_str, n-1)
  end
end

def reverse_help(s, rev_str, i)
  if i < 0
    return rev_str
  end
  rev_str << s[i]
  # puts rev_str
  reverse_help(s, rev_str, i-1)
end

def reverse_inplace(s)
  if s.nil?
    return nil
  else
    n = s.length
    i = 0
    rev_inplace_help(s, i, n - 1)
  end
end

def rev_inplace_help(s, i, j)
  if i >= j
    return s
  else
    temp = s[i]
    s[i] = s[j]
    s[j] = temp
  end

  return rev_inplace_help(s, i + 1, j - 1)
end

# bunny(n) Write a method bunny that accepts an integer parameter n. N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
def bunny(n)
  if n == 0
    return 0
  end

  return 2 + bunny(n-1)
end

# nested(s) Write a method nested that accepts a string of only parenthesis and then returns if those parenthesis are properly nested. You may assume that no non-paren characters will be passed to this method.
def nested(s)
  #recursively look at head and tail
  i = 0
  n = s.length
  nest_help(s, i, n-1)
end

def nest_help(s, i, j)
  # head and tail incremented equally must not be same char
  if i > j
    return true
  elsif
    s[i] == ")"
    return false
  end
  nest_help(s, i+1, j-1)
end

# search(array, value) Write a method search that accepts an unsorted array of integers and an integer value to find and then returns true if the value if found in the unsorted array and false otherwise. Make the algorithm recursive.

def search(array, value)
  if array.empty?
    return false
  else
    n = array.length
    i = 0
    search_help(array, value, i, n)
  end
end

def search_help(array, value, i, n)
  if i >= n
    return false
  elsif
    array[i] == value
    return true
  end

  return search_help(array, value, i+1, n)
end

# is_palindrome(s) Write a recursive method pal that accepts a string s as a parameter and returns a boolean value indicating if that string is a palindrome or not.

def is_palindrome(s)
  if s.nil?
    return false
  else
    i = 0
    n = s.length
    is_pal_help?(s, i, n-1)
  end
end

def is_pal_help?(s, i, j)
  if i > j
    return true
  elsif s[i] != s[j]
    return false
  end

  return is_pal_help?(s, i+1, j-1)
end

# Design and implement a recursive method that accepts two non-negative integers as parameters and that returns the number of digits that match in the two integers. Two digits match if they are equal and have the same position relative to the end of the number (i.e. starting with the ones digit). In other words, the method should compare the last digits of each number, the second-to-last digits of each number, the third-to-last digits of each number, and so forth, counting how many pairs match. For example, for input values of (1072503891, 62530841), 4 would be returned as the answer
def digit_match(n, m)
  count = 0
  dm_help(n, m, count)
end

def dm_help(n, m, count)
  if n == 0|| m == 0
    return count
  elsif n % 10 == m % 10
    count += 1
  end
  dm_help(n/10, m/10, count)
end

# Factorial Tests
raise "factorial broke - factorial(4)" unless factorial(4) == 24
raise "factorial broke - factorial(0)" unless factorial(0) == 1
puts "passes all factorial tests"

# Reverse Tests
raise "reverse broke - reverse('hello world')" unless reverse("hello world") == "dlrow olleh"
raise "reverse broke - reverse('a b c')" unless reverse("a b c") == "c b a"
puts "passes all reverse tests"

# Reverse In place Tests
str_1 = 'hello world'
reverse_inplace(str_1)
raise "reverse broke - reverse_inplace('hello world')" unless str_1 == "dlrow olleh"
str_2 = 'a b c'
reverse_inplace(str_2)
raise "reverse broke - reverse_inplace('a b c')" unless str_2 == "c b a"
puts "passes all reverse_inplace tests"

# Bunny Tests
raise "bunny broke - bunny(0)" unless bunny(0) == 0
raise "bunny broke - bunny(10)" unless bunny(10) == 20
puts "passes all bunny tests"

# Nested Tests
raise "nested broke - nested('((()))')" unless nested("((()))") == true
raise "nested broke - nested('())')" unless nested("())") == false
puts "passes all nested tests"

# Search Tests
arr_1 = [34, 45, 21, 4, 67]
raise "search broke - search([34, 45, 21, 4, 67], 4)" unless search(arr_1, 4) == true
arr_2 = [24, 51, 11]
raise "search broke - search([24, 51, 11], 4)" unless search(arr_2, 4) == false
arr_3 = []
raise "search broke - search([], 4)" unless search(arr_3, 4) == false
puts "passes all search tests"

# Palindrome Tests
raise "is_palindrome broke - is_palindrome('racecar')" unless is_palindrome('racecar') == true
raise "is_palindrome broke - is_palindrome('smile')" unless is_palindrome('smile') == false
puts "passes all palindrome tests"

# Digit Match Tests
raise "digit_match broke - digit_match(1072503891, 62530841)" unless digit_match(1072503891, 62530841) == 4
raise "digit_match broke - digit_match(1234, 4321)" unless digit_match(1234, 4321) == 0
raise "digit_match broke - digit_match(3862947593, 3862947593)" unless digit_match(3862947593, 3862947593) == 10
puts "passes all digit_match tests"
puts "All test passed"
