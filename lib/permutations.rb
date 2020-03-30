def permutations?(string1, string2)

  return false if string1.length != string2.length

  lookup_hash = {}
  string1.each_char do |letter|
    lookup_hash[letter] = 0
  end

  string2.each_char do |letter|
    if lookup_hash[letter]
      lookup_hash[letter] = true
    end
  end

  puts lookup_hash
  if lookup_hash.value?(0) 
    return false
  else
    return true
  end

end