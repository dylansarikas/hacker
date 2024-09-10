def funcMaxDifference(inputArr):
	# Write your code here
	output = 0
	counter = 0
	while counter < len(inputArr):
		first = inputArr[counter]
		counter_two = counter + 1
		while counter_two < len(inputArr):
			second = inputArr[counter_two]
			if first < second and ((second - first) > output):
				output = second - first

			counter_two += 1

		counter += 1

	print(output)

funcMaxDifference([2,3,10,6,4,8,1])