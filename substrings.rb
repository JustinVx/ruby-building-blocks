puts 'Project 3: Substrings'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  words = string.split
  for i in 0...dictionary.count
    for j in 0...words.count
      if words[j].downcase.include?(dictionary[i])
        hash[dictionary[i]] ? (hash[dictionary[i]] += 1) : (hash[dictionary[i]] = 1)
      end
    end
  end
  puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
