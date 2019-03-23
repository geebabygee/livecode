def acronymize(sentence)
  words = sentence.split(" ")
  first_letters = []
  words.each do |word|
    first_letters << word[0]
  end
  first_letters.join.upcase
end


# What is an acronym:
# WTF => what the f*ck
# CIA => central intelligence agency
# FBI => federal bureau of investigation

# Pseudocode:
# 1) we start with a String
# 2) split the sentence into words => Array
    # delete ["of", "the", "a"]
# 3) get the first letter of each word #each/map
# 4) upcase the first letter of each word #upcase
# 5) add upcased initials together #join


def acronymize(sentence)
  # TODO: Build an acronym from the sentence
  words = sentence.split

  letters = []
  words.each do |word|
    letters << word[0].upcase
  end

  # letters = words.map do |word|
  #   word[0].upcase
  # end
#.          do                     end

  letters.join
end

puts acronymize("Frequently Asked Questions") == "FAQ"
puts acronymize("") == ""
puts acronymize("AWAY FROM KEYBOARD") == "AFK"
puts acronymize("working from home") == "WFH"


# def acronymize(string)
#   # TODO: write a method that returns
#   # the acronym for the given string
#   # 1. Split the sentence into words
#   # 2. Grab the first letter of each word
#   # 3. Capitalize it
#   # 4. Join the first letters together
#   # 5. return the result

#      # gsub: string to replace , replace with
#      # split returns an array
#   words = string.gsub(",","").split

#   # acronym = []
#   # words.each do |word|
#   #   acronym << word[0].capitalize
#   # end

#   # takes an array and returns a new array
#   # with the transformation applied
#   words.map { |word| word[0].capitalize }.join


#   # acronym.join("")

# end

def acronymize(sentence)
  # split the sentence into words and save it in a var
  words = sentence.split(" ")
  # initialize an empty array and save it in a var
  first_letters = []
  # iterate over words, for each word, select the first letter and store it in the array
  words.each do |word|
    first_letters << word[0]
  end
  # Join elements of the array, uppercase it and return it
  first_letters.join.upcase
end


acronymize("Away from keyboard")

