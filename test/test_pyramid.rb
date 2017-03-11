require 'test/unit'
require '../pyramid'
class TestPyramid < Test::Unit::TestCase
LEFT_ALIGN_STAR_PYRAMID = "*
**
***
****
*****"
RIGHT_ALIGN_STAR_PYRAMID ="    *
   **
  ***
 ****
*****"
CENTER_ALIGN_STAR_PYRAMID = "  *
 **
 ***
****
*****"
  %w(left_align_star_pyramid right_align_star_pyramid center_align_star_pyramid).each do |method_name|
    pyramid = Pyramid.new
    test "test_#{method_name}" do
      expected = pyramid.send(method_name.to_sym, 5)
      assert_equal expected,  TestPyramid.const_get(method_name.upcase)
    end
  end
end
