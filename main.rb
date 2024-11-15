def caeser_cipher(string, key)
  alphabet = ('a'..'z').to_a
  cipher = ""

  string.each_char do |char|
    if alphabet.include?(char.downcase) 
      new_key = (alphabet.index(char.downcase) + key) % 26
      
      if char == char.upcase
        char = alphabet[new_key].upcase
      else
        char = alphabet[new_key]
      end
    end 
    cipher << char
  end
  cipher
end

puts "Enter whatever you please (of course a string of text) that you want encrypted!!!"
text = gets.chomp
puts "And then the offset value"
num = gets.chomp.to_i

puts caeser_cipher(text, num)