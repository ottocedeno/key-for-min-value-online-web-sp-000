def key_for_min_value(name_hash)
  lowest_age = name_hash.collect {|name, age| age}

  while lowest_age.length > 1
    lowest_age.delete(lowest_age.max)
  end

  name_hash.each {|name, age| return name if age == lowest_age[0] }

  return nil
end


#FIS answer... Much cleaner. Only one iteration loop...
# def key_for_min_value(hash)
#   lowest_key = nil
#   lowest_value = nil
#   hash.each do |k, v|
#     if lowest_value == nil || v < lowest_value
#       lowest_value = v
#       lowest_key = k
#     end
#   end
#   lowest_key
# end
