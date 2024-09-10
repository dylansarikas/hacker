def funcHopSkipJump(matrix):
	total_jumps = (len(matrix) * len(matrix[0])) / 2
	y = len(matrix) - 1
	x = len(matrix[0]) - 1
	current = [0, 0]
	jumps = 1
	while jumps < total_jumps:
		print(matrix[current[0]][current[1]])
		downward_jump = y - current[0]
		if downward_jump >= 2:
			current[0] = current[0] + 2
		elif downward_jump == 1:
			current[0] = current[0] + 1
			current[1] = current[1] + 1
		elif downward_jump == 0:
			current[1] = current[1] + 2
		elif downward_jump == -1:
			print("it hurts")
		jumps += 1
		
	print(matrix[current[0]][current[1]])
    
funcHopSkipJump([[29,8,37],[15,41,3],[1,10,14]])