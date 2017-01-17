MAX = 26;

def ceasar_cipher(input,shift)
    shift = shift%MAX
    ascii = input.chars.map{|c| c.ord}
    coded = ascii.map{|c| ((c + shift)<123? (c+shift):(c+shift-26)).chr}
  
    return coded.join
    
end

puts ceasar_cipher("abc",1) #bcd
puts ceasar_cipher("z",1) #a
puts ceasar_cipher("zay",27) #abz