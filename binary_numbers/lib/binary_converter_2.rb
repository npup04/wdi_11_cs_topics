module BinaryConverter
    def self.to_fixnum(binary_string)
        total = 0
        (0..binary_string.length-1).each do |index|
            str_ind = binary_string[index].to_i #=> 0 1 0

            total += 2**(binary_string.length-index-1) * str_ind
        end
        total
    end

end

# p to_fixnum('010') #=> 2
