class Solution:
    def countStudents(students: list[int], sandwiches: list[int]) -> int:
        while len(students) > 0 and sandwiches[0] in students:
            if students[0] == sandwiches[0]:
                students.pop(0)
                sandwiches.pop(0)
            else:
                back = students.pop(0)
                students.append(back)

        print(len(students))
        return(len(students))
    
Solution.countStudents([1,1,0,0], [0,1,0,1])
Solution.countStudents([1,1,1,0,0,1], [1,0,0,0,1,1])