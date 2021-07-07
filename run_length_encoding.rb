require 'byebug'


class RunLengthEncoding
  class << self
    def encode input
      char_arr = input.split('')
      counter = 0
      output = []

      char_arr.each_with_index do |letter, index|
        counter += 1
        if char_arr[index+1] == letter
          next
        else
          if counter == 1
            output << "#{letter}"
          else
            output << "#{counter}#{letter}"
          end
          counter = 0
        end
      end
      output.join
    end

    def decode input
      char_arr = input.split('')
      counter = 0
      output = []

      char_arr.each_with_index do |letter, index|
        counter += 1
        if char_arr[index+1] == letter
          next
        else
          if counter == 1
            output << "#{letter}"
          else
            output << "#{counter}#{letter}"
          end
          counter = 0
        end
      end
      output.join
    end
  end
end
