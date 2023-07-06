def dayOfProgrammer(year)
    #pre 1917
    #pre 1917 leap years
    #1918
    #post 1919
    #post 1919 leap years
    output = ""
    if year == 1918
        output = "26.09."
    end

    if year < 1918
        if year%4 == 0
            output = "12.09."
        else
            output = "13.09."
        end
    end

    if year > 1918
        if ((year%4 == 0 && year%100 != 0) || (year%400 == 0))
            output = "12.09." 
        else
            output = "13.09."
        end
    end

    output = output + year.to_s

    
    puts output
    return output

end

dayOfProgrammer(1918)
dayOfProgrammer(1800)
dayOfProgrammer(1917)
dayOfProgrammer(2017)
dayOfProgrammer(2000)
dayOfProgrammer(2016)
dayOfProgrammer(2100)