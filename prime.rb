# Pyramid Class Conatins functions which return diffrent types of patterns of pyramid
class Prime
  attr_accessor :num

  def initialize(number)
    self.num =  number
  end

  def is_prime
    return false unless num > 1
    (2..(num/2)).each do |i|
      return false if num % i == 0
    end
    true
  end
end
