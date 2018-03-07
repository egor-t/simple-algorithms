require_relative "switch_array_elements"
require "test/unit"

class TestSwitchArrayElements < Test::Unit::TestCase

  def setup
    @arr_sort_asc = (1..5).to_a.sort
    @arr_random = (1..10).to_a.sort { rand(2) }
  end
  
end
