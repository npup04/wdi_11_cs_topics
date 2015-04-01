module BinaryConverter
  def self.to_fixnum(binary_string)
    total = 0
    binary_array = binary_string.to_s.chars.map(&:to_i)

    binary_array.each_with_index do |n, i|
    total += 2 ** (binary_array.length-i-1) * n
  end
  total
  end

end

# p BinaryConverter.to_fixnum('010')
