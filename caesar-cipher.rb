puts 'Project 1: Caesar Cipher'

def ceasar_ciper(input_s, change)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  output = ""
  for i in 0...input_s.size do
    /[A-Z]/ =~ input_s[i] ? (up = true) : (up = false)
    output += input_s[i] if !alphabet.include?(input_s[i].downcase)
    for j in 0...alphabet.size do
      if alphabet[j] == input_s[i].downcase
        if j+change < alphabet.size
          up ? (output += alphabet[j+change].upcase) : (output += alphabet[j+change])
        else
          up ? (output += alphabet[j+change-alphabet.size]) : (output += alphabet[j+change-alphabet.size])
        end
      end
    end
    input_s[i] = input_s[i].upcase if up
  end
  return output
end

puts ceasar_ciper("Krijg toch allemaal de volkolere xx Bert", 3)
