puts 'Project 1: Caesar Cipher'

def ceasar_ciper(input_s, change)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  output = ""
  for i in 0...input_s.size do
    up = false
    up = true if input_s[i] =~ /[A-Z]/
    for j in 0...alphabet.size do
      if alphabet[j] == input_s[i].downcase
        if j+change < alphabet.size
          #input_s[i] = alphabet[j+change]
          k = j + change
          print "#{alphabet[k]}"
          input_s[i] = alphabet[j]
        else
          input_s[i] = alphabet[j+change-alphabet.size]
        end
      end
    end
    input_s[i] = input_s[i].upcase if up
  end
  puts input_s
end

ceasar_ciper("Krijg toch allemaal de volkolere xx bert", 3)
