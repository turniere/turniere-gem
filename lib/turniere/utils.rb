module Turniere
  class Utils
    def self.previous_power_of_two(number)
      return 0 if number.zero?

      exponent = Math.log2 number
      2**exponent.floor
    end
  end
end
