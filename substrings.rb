def substrings(string, dictionary)
    dictionary.reduce({}) do |hash, element|
    matches = string.scan(/#{element}/i).length
    hash[element] = matches if matches > 0
    hash
  end
end


string = "My name is very cool, it is Nelson"
dictionary = ["name", " ", "cool", "is"] 

puts substrings(string, dictionary)