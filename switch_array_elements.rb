class SwitchArrayElements

  def switch_elements arr
    max_index = arr.index arr.max
    min_index = arr.index arr.min
    swap_elements(arr, max_index, min_index)
    actual_min_index = arr.index arr.min
    actual_max_index = arr.index arr.max

    puts "Old min index: #{min_index} \nOld max index: #{max_index}"
    puts "Min index: #{actual_min_index} \nMax index: #{actual_max_index}"
  end

  private

  def swap_elements(arr, a, b)
    arr[a], arr[b] = arr[b], arr[a]
  end
end

switch_obj = SwitchArrayElements.new
switch_obj.switch_elements [6, 5, 120, 11]
