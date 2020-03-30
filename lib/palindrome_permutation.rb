
def palindrome_permutation?(string)
  lookup_hash = {}
  string.each_char do |letter|
    lookup_hash[letter] = 0
  end

  string.each_char do |letter|
    if lookup_hash[letter]
      lookup_hash[letter] += 1
    end
  end

  number_of_odd = 0
  lookup_hash.each_value do |letter|
    number_of_odd += 1 if letter.odd?
  end
  
  if number_of_odd > 1
      return false
    else
      return true
  end

end