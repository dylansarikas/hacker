def bonAppetit(bill, k, b)
    #p bill
    bill.delete_at(k)
    #p bill
    output = 0
    total = bill.sum
    if (total/2) == b
        output = "Bon Appetit"
    else
        output = (b - (total/2))
    end

    puts output
    return output

end

bonAppetit([3, 10, 2, 9], 1, 7)
bonAppetit([3, 10, 2, 9], 1, 12)