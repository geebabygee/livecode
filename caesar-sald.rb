def encrypt(text)
  return "" if text == ""

  alphabet = ("A".."Z").to_a
  text.split("").map do |letter|
    if letter == " "
      letter
    else
      index = alphabet.index(letter)
      alphabet[index-3]
    end
  end.join
end

def encrypt(text)
  alphabet = ("A".."Z").to_a
  text.upcase.split("").map do |letter|
    index = alphabet.index(letter)
    index.nil? ? letter : alphabet[index - 3]
  end.join
end


def encrypt(sentence, permutation_level = -3)
  return "" if sentence.empty?
  alphabet = ("A".."Z").to_a
  # 1. Split string into letters
  letters = sentence.upcase.split("")
  # 2. Go through each letter
  result = ""
  # letters.each do |letter|
  #   # 3. Find index in list of letters
  #   letter_index = alphabet.index(letter)
  #   # 4. Shift index and store new value
  #   new_index = letter_index + permutation_level if letter_index
  #   new_letter = letter_index.nil? ? letter : alphabet[new_index]
  #   # 5. Join string together
  #   result += new_letter
  # end
  # # 6. Return string


  letters.map do |letter|
     letter_index = alphabet.index(letter)
      new_index = letter_index + permutation_level if letter_index
      new_letter = letter_index.nil? ? letter : alphabet[new_index]
      new_letter
  end.join
  # result
end

def decrypt(sentence, permutation_level = 3)
  encrypt(sentence, permutation_level)
end

sentence = "FK ZOVMQLDOXMEV, X ZXBPXO ZFMEBO, XIPL HKLTK XP ZXBPXO'P ZFMEBO, QEB PEFCQ ZFMEBO, ZXBPXO'P ZLAB LO ZXBPXO PEFCQ, FP LKB LC QEB PFJMIBPQ XKA JLPQ TFABIV HKLTK BKZOVMQFLK QBZEKFNRBP. FQ FP X QVMB LC PRYPQFQRQFLK ZFMEBO FK TEFZE BXZE IBQQBO FK QEB MIXFKQBUQ FP OBMIXZBA YV X IBQQBO PLJB CFUBA KRJYBO LC MLPFQFLKP ALTK QEB XIMEXYBQ. CLO BUXJMIB, TFQE X IBCQ PEFCQ LC 3, A TLRIA YB OBMIXZBA YV X, B TLRIA YBZLJB Y, XKA PL LK. QEB JBQELA FP KXJBA XCQBO GRIFRP ZXBPXO, TEL RPBA FQ FK EFP MOFSXQB ZLOOBPMLKABKZB."

puts decrypt(sentence)
