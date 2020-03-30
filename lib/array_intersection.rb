def intersection(list1, list2)
  # add to hash if not already in the hash
  # setting up lookup hash
  lookup_hash = {}
  if list1.length < list2.length
    list1.each do |num|
      lookup_hash[num] = true
    end

    intersection_array = list2.map do |num|
      num if lookup_hash[num]
    end

    return intersection_array.compact
  else
    list2.each do |num|
      lookup_hash[num] = true
    end

    intersection_array = list1.map do |num|
      num if lookup_hash[num]
    end

    return intersection_array.compact
  end
end