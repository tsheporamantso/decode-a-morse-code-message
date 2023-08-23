CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# Decode a Morse code character
def decode_character(str)
  CODE[str]
end

# Decode a Morse code word
def decode_word(word)
  decoded = ''
  arr_of_characters = word.split

  arr_of_characters.each do |char|
    decoded += decode_character(char)
  end

  decoded
end

# Decode entire message
def decode(message)
  decoded_message = ''
  word_codes = message.split('   ')

  word_codes.each do |word|
    decoded_message += if decoded_message == ''
                         decode_word(word)
                       else
                         " #{decode_word(word)}"
                       end
  end

  decoded_message
end
