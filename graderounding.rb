def gradingStudents(grades)
    grades.each_with_index do |grade, index|
        if (grade%5) > 2  && (grade>37)
            grades[index] = grade + (5-(grade%5))
        end
    end

    p grades

end

abc = [73, 67, 38, 33]
gradingStudents(abc)