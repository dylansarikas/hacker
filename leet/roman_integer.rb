def roman_to_int(s)
    sum = 0
    roman = s.split("")
    while roman.length != 0
        case roman[0]
        when "I"
            if roman[1] == "V"
                sum += 4
                roman = roman.drop(1)
            elsif roman[1] == "X"
                sum += 9
                roman = roman.drop(1)
            else
                sum += 1
            end
        when "V"
            sum += 5
        when "X"
            if roman[1] == "L"
                sum += 40
                roman = roman.drop(1)
            elsif roman[1] == "C"
                sum += 90
                roman = roman.drop(1)
            else
                sum += 10
            end
        when "L"
            sum += 50
        when "C"
            if roman[1] == "D"
                sum += 400
                roman = roman.drop(1)
            elsif roman[1] == "M"
                sum += 900
                roman = roman.drop(1)
            else
                sum += 100
            end
        when "D"
            sum += 500
        when "M"
            sum += 1000
        end
        roman = roman.drop(1)
    end
    puts sum
end

roman_to_int("III")
roman_to_int("LVIII")
roman_to_int("MCMXCIV")