def count_students(students, sandwiches)
    while students.length > 0 && students.include?(sandwiches[0])
        if students[0] == sandwiches[0]
            students.shift
            sandwiches.shift
        else
            back = students.shift
            students.append(back)
        end
    end
    puts students.length
    return students.length
end

count_students([1,1,0,0], [0,1,0,1])
count_students([1,1,1,0,0,1], [1,0,0,0,1,1])