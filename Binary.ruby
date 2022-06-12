# Function to convert binary number to Base 10 decimal format

def input_user
  # User Enter the Binary number to be converted
  puts 'Enter a Number in Binary: '
  # the binary number is reversed for calculation
  number1 = gets.chomp
  number = number1.reverse
  puts 'The Binary Number entered in reverse: ', number
  decimal = 0
  power = 0
  # The reversed binary number is iterated multiplying it to 2 power n
  element_char = number.split('')
  element_char.each { |x|
    decimal = (x.to_i * 2**power) + decimal
    power += 1
  }
  # The Function displays the output of the conversion
  puts "The Binary Number #{number1} = #{decimal} in Decimal Number base 10 format"

end

input_user
