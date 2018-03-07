class SwitchArrayElements

  def switch_elements(arr)
    max_index = arr.index(arr.max)
    min_index = arr.index(arr.min)
    swap_elements(arr, max_index, min_index)
    actual_min_index = arr.index(arr.min)
    actual_max_index = arr.index(arr.max)

    puts '******* Switch / Min index & Max index *******'
    puts "Old min index: #{min_index} \nOld max index: #{max_index}"
    puts "Min index: #{actual_min_index} \nMax index: #{actual_max_index}\n"
  end

  def sum_of_few_smallest_numbers(arr)
    smallest_number1 = arr.min
    arr_without_number1 = arr - [smallest_number1]
    smallest_number2 = arr_without_number1.min
    puts '******* Smallest numbers *******'
    puts "Sum of first smallest numbers: #{smallest_number1 + smallest_number2}"
  end

  private

  def swap_elements(arr, a, b)
    arr[a], arr[b] = arr[b], arr[a]
  end
end

some_arr = [1, 6, 5, 120, 11]
switch_obj = SwitchArrayElements.new
switch_obj.switch_elements(some_arr)
switch_obj.sum_of_few_smallest_numbers(some_arr)
