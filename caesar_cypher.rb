
# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def caesar_cipher(string, shift_factor)
  
  shifted_string = []
  converted_string = string.split("").map  { |char| char.ord }

  converted_string.each do |char|
    csf = char + shift_factor
    if char.between?(65, 90)
      csf > 90 ? shifted_string << (65 + (csf - 91)) : shifted_string << (csf)
    elsif char.between?(97, 122)
      csf > 122 ? shifted_string << (97 + (csf - 121)) : shifted_string << (csf)
    else 
      shifted_string << char
    end
  end

  shifted_string = shifted_string.map  { |char| char.chr }
  puts shifted_string.join("")

end

caesar_cipher("Doesn't this work GREAT... #$%54555## - as a demonstration?!", 5)
