require 'test/unit'
require '../armstrong_number'
class TestArmstrongNumber < Test::Unit::TestCase

  test "Test to Check all ArmstrongNumbers" do
    [1,4,6,9,153,1634].each do |num|
      expected = ArmstrongNumber.new(num).is_armstrong
      assert_equal expected, true
    end
  end

  test "Test to Check all Non ArmstrongNumbers" do
    [0,10,12,14,15].each do |num|
      expected = ArmstrongNumber.new(num).is_armstrong
      assert_equal expected, false
    end
  end
end
 