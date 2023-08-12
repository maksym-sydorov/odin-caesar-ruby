def caesar_cipher(deciphered_string, decipher_shift)
  new_list = deciphered_string.split('')
  ciphered_str = ''
  capital_letters = (65..90).to_a
  small_letters = (97..122).to_a
  new_list.each do |char|
    puts char
    if capital_letters.include?(char.ord)
      temp_index = capital_letters.index(char.ord)
      temp = if temp_index + decipher_shift > capital_letters.length
               capital_letters.at(temp_index + decipher_shift - capital_letters.length)
             else
               capital_letters.at(temp_index + decipher_shift)
             end
      puts "char ord #{char.ord}"
      puts "temp_index #{temp_index}"
      puts "temp #{temp}"
      ciphered_str += temp.chr
    elsif small_letters.include?(char.ord)
      temp_index = small_letters.index(char.ord)
      temp = if temp_index + decipher_shift > capital_letters.length
               small_letters.at(temp_index + decipher_shift - small_letters.length)
             else
               small_letters.at(temp_index + decipher_shift)
             end
      ciphered_str += temp.chr
    else
      ciphered_str += char
    end
  end
  ciphered_str
end