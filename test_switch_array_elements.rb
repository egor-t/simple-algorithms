require_relative "switch_array_elements"
require "test/unit"

class TestSwitchArrayElements < Test::Unit::TestCase

  def setup
    @arr_sort_asc = (1..5).to_a.sort
  end

  def test_should_return_swap_elements
    assert_equal([5,1], SwitchArrayElements.new.swap_elements(@arr_sort_asc, 0, 4))
  end

  def  test_should_return_swap_elements_full_array
    SwitchArrayElements.new.swap_elements(@arr_sort_asc, 0, 4)
    assert_equal([5, 2, 3, 4, 1], @arr_sort_asc)
  end

  def test_should_return_sum_two_smallest_number_from_array
     assert_equal(3, SwitchArrayElements.new.sum_of_few_smallest_numbers(@arr_sort_asc))
  end
end
