require 'number_inverter/version'

# Number Inverter class
class NumberInverter
  # Invert a number
  #
  # Example:
  #   >> NumberInverter.invert(123)
  #   => 321
  #
  # Arguments:
  #   number: (Integer or Float)

  def self.invert(number)
    if number.is_a? Fixnum
      sgn = self.sgn(number)
      number_str = number.abs.to_s
      number_str.reverse!
      sgn * number_str.to_i
    elsif number.is_a? Float
      sgn = self.sgn(number)
      number_str = number.abs.to_s
      number_str.reverse!
      sgn * number_str.to_f
    end
  end

  def self.sgn(n)
    n <=> 0
  end
end
