def kangaroo(x1, v1, x2, v2)
    output = "broke"
    if x1 == x2 && v1 != v2
        output = "NO"

    elsif (x1 > x2 && v1 > v2) || (x2 > x1 && v2 > v1)
        output = "NO"
    

    elsif x1 > x2
        difference = x1 - x2

        count = 0
        while difference > 0
            # count += 1
            # if count ==  10000
            #     puts "overflow"
            #     break
            # end
            # puts x1
            # puts x2
            # puts "going first"
            x1 = x1 + v1
            x2 = x2 + v2
            difference = x1 - x2
        end

        if difference == 0
            output = "YES"
        else
            output ="NO"
        end

    elsif x2 > x1
        difference = x2 - x1

        count = 0
        while difference > 0
            # count += 1
            # if count ==  10000
            #     puts "overflow"
            #     break
            # end
            # puts x1
            # puts x2
            # puts "going second"
            x1 = x1 + v1
            x2 = x2 + v2
            difference = x2 - x1
        end

        if difference == 0
            output = "YES"
        else
            output ="NO"
        end

    end

    puts output
    return output

end

kangaroo(0, 3, 4, 2)
kangaroo(9, 3, 1, 7)
kangaroo(0, 2, 5, 3)
kangaroo(8, 5, 1, 2)
kangaroo(0, 5, 0, 7)
kangaroo(112, 9563, 8265, 244)
kangaroo(4523, 8092, 9419, 8076)