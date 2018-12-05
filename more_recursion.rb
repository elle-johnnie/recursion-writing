def perm(string)
  perms_arr = []
  if string.nil? || string.length == 1
    return perms_arr << string
  end

  n = string.length - 1
  first_char = string[0]

  # recursively call perm method
  # move the first letter down in position by one place
  # add that new string to the array of perms
  # string[1..-1] gets all parts of the string after the first character
  # this creates an array of sub-arrays, so flatten to fix
  perm(string[1..-1]).flat_map do |s|
    (0..n).map do |i|
      # increment i in range 0 to length of string
      # copy the string
      # in the new copy insert the first char of the string at position i
      s.dup.insert(i, first_char)
    end
  end
end

p perm("")
p perm("ab")
p perm("cat")
