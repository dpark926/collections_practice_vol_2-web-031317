# your code goes here
def begins_with_r(array)
  i = 0
  while i < array.length
    word = array[i]

    if word[0] != "r"
      return false
    end

    i += 1
  end

  if array.length == 0
    return false
  end

  return true
end

def contain_a(array)
  new_array = []

  i = 0
  while i < array.length
    word = array[i]
      if word.index("a")
        new_array << word
      end
    i += 1
  end

  return new_array
end

def first_wa(array)
  i = 0
  while i < array.length
    word = array[i]
    if word[0..1] == "wa"
      return word
    end

    i += 1
  end
end

def remove_non_strings(array)
  new_array = []

  i = 0
  while i < array.length
    word = array[i]

    if word.class == String
      new_array << word
    end
    i += 1
  end

  return new_array
end

def count_elements(array)
  final_array = []

	array.each do |obj|
# 	obj[:count] = 0
		if final_array.index(obj) != 0
			final_array << obj
			obj[:count] = array.count(obj)
		end

# 		puts array.count(obj)
	end

# 	puts count
# 	puts final_array
# 	puts array
  final = []

	i = 0
	while i <= final_array.length
		if i.even?
			final << array[i]
		end
		i += 1
	end

  return final
end

def merge_data(keys, array)
  new_array = []

  keys.each do |names_obj|
		array.each do |array_obj|
# 			if array_obj.keys.index(names_obj[:first_name])
# # 				names_obj.merge(array_obj[keys])
# 			end
#
# # 			puts names_obj[:first_name]
# 			puts array_obj.class

			array_obj.each do |key, value|
				if key == (names_obj[:first_name])
					new_array << names_obj.merge(value)
# 					puts "happy"
				end
# 				puts names_obj[:first_name]
# 				puts value
			end
		end
	end

  return new_array
end

def find_cool(array)
  final_array = []

  array.each do |obj|
		if obj.values.index("cool")
			final_array << obj
		end
# 		puts obj.values.to_s
	end

  return final_array
end

def organize_schools(array)
  new_hash = {}

	array.each do |school, location|
		if location.values
			new_hash[location.values.join("")] = []
		end
# 		new_hash[value.values.join("")] << key
	end

	new_hash.each do |city, school|
		array.each do |school2, location2|
			if location2.values.index(city)
				new_hash[city] << school2
			end

		end
	end

	return new_hash
end
