def plusMinus(arr)
    # Write your code here
    #puts arr[0]
    #p arr[1]
    pos = 0
    neg = 0
    zero = 0
    length = arr.length
    for n in arr
        if n == 0
            zero += 1
        elsif n > 0
            pos += 1
        else
            neg += 1
        end
    end
    puts sprintf("%6f", pos.fdiv(length))
    puts sprintf("%6f", neg.fdiv(length))
    puts sprintf("%6f", zero.fdiv(length))
    
    #puts sprintf("%6f", pos)
end

plusMinus([-4, 3, -9, 0, 4, 1])