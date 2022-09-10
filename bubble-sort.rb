def bubble_sort(array)
	p "Original array: #{array}"
	sorted_array = array
	sorted = false
	unsorted_until_index = array.length - 1

	until sorted do
		swaped = false

		for index in Range.new(0, unsorted_until_index, true) do
			if sorted_array[index] > sorted_array[index + 1]
				sorted_array[index + 1], sorted_array[index] = sorted_array[index], sorted_array[index + 1]

				swaped = true
			end

		end		
		unsorted_until_index -= 1

		sorted = true if swaped == false || unsorted_until_index == 0
	end
	sorted_array
end



p "Array sorted: #{bubble_sort([4,3,78,2,0,2])}"
puts ""
p "Array sorted: #{bubble_sort([65, 55, 45, 35, 25, 15, 10])}"
