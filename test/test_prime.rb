require 'test/unit'
require_relative '../prime'
class TestPrime < Test::Unit::TestCase

  test "Test to Check all Prime Numubers" do
    [2,3,5,7,11,13,17,19,23,47,].each do |num|
      expected = Prime.new(num).is_prime
      assert_equal expected, true
    end
  end

  test "Test to Check all Non Prime Numubers" do
    [0,1,4,6,9,10,12,14,15].each do |num|
      expected = Prime.new(num).is_prime
      assert_equal expected, false
    end
  end
end
