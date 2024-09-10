def funcTwins(inputArr):
	# Write your code here
	output = -1
	
	while len(inputArr) > 0:
		check = inputArr[0]
		inputArr.pop(0)
		if check in inputArr:
			inputArr.pop(0)
		else:
			output = check
			break	

	print(output)
    

funcTwins([1,1,2,3,3,4,4])

funcTwins([1,1,2,2])

funcTwins([1,2,3,4])