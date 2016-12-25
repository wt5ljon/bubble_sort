#!/usr/bin/ruby

# implementation of the Odin bubble sort challenge
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

# implementation of the Odin bubble_sort_by challenge
def bubble_sort_by(array)
	stop = 2
	while true
		swap = false
		(0..array.length-stop).each do |index|
			if yield(array[index], array[index+1]) > 0
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

out = []

# test standard bubble_sort
out = bubble_sort([14, 23, 2, 5, 19, 16, 1, 6, 8])
puts out

# test bubble_sort_by sort ascending
out = bubble_sort_by([14, 23, 2, 5, 19, 16, 1, 6, 8]) do |first,second| 
	first - second
end
print "\n"
puts out

# test bubble_sort_by sort descending
out = bubble_sort_by([14, 23, 2, 5, 19, 16, 1, 6, 8]) do |first,second| 
	second - first
end
print "\n"
puts out

# test bubble_sort_by sort string length ascending
out = bubble_sort_by(["hi", "hello", "hey"]) do |first,second| 
	first.length - second.length
end
print "\n"
puts out

# test bubble_sort_by sort string length descending
out = bubble_sort_by(["hi", "hello", "hey"]) do |first,second| 
	second.length - first.length
end
print "\n"
puts out

