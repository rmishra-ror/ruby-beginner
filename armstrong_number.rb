# Pyramid Class Conatins functions which return diffrent types of patterns of pyramid
class ArmstrongNumber
  attr_accessor :num

  def initialize(number)
    self.num =  number
  end

  def length
    @len ||= num.to_s.length
  end

  def pow(number)
    pow = number
    2.upto(length).each{ pow *= number}
    pow
  end

  def is_armstrong
    return false if num == 0 
    number = num
    new_number = 0
    while number > 0
      new_number += pow(number % 10)
      number = number/10
    end
     return true if new_number == num
     false
  end
end
