ALPHABET = ("a".."z").to_a

def caesar_cipher(str, shift = 0)
  str.each_char.map do |char|
    char_index = ALPHABET.index(char.downcase)
    if char_index
      new_index = char_index + shift
      if new_index > ALPHABET.length then new_index -= ALPHABET.length end
      char == char.upcase ? char = ALPHABET[new_index].upcase : char = ALPHABET[new_index]
    else
      char
    end
  end.join("")
end