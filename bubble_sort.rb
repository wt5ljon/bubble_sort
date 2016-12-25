#!/usr/bin/ruby

# implementation of the bubble sort algorithm
def bubble_sort(array)
	stop = 2
	while true
		swap = false
		(0..array.length-stop).each do |index|
			if array[index] > array[index+1]
				temp = array[index]
				array[index] = array[index+1]
				array[index+1] = temp
				swap = true
			end
		end
		# array is sorted if no swaps performed, break out of while loop
		if swap == false
			break
		end
		stop += 1
	end
	return array
end

puts bubble_sort([14, 23, 2, 5, 19, 16, 1, 6, 8])
