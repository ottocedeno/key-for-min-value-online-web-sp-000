def key_for_min_value(name_hash)
  lowest_age = name_hash.collect {|name, age| age}

  while lowest_age.length > 1
    lowest_age.delete(lowest_age.max)
  end

  name_hash.each {|name, age| return name if age == lowest_age[0] }

  return nil
end
