def gradingStudents(grades)
    #0 1 2 5 6 7 No Round
    #3 4 8 9 Round
    #% > 2 Round
    grades.each_with_index do |grade, index|
        if (grade%5) > 2  && (grade>37)
            grades[index] = grade + (5-(grade%5))
        end
    end

    p grades

end

# puts(0%5) 0
# puts(2%5) 2
# puts(3%5) 3
# puts(5%5) 5
# puts(7%5) 2
# puts(8%5) 3
# puts(9%5) 4

abc = [73, 67, 38, 33]
gradingStudents(abc)