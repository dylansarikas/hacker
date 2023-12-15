def stupidchairs(orders)
    orders = orders.chars
    chairs = 0
    available = 0
    for order in orders

        if order == "C" || order == "U"
            if available == 0
                chairs += 1
            else
                available -= 1
            end
        end

        if order == "R" || order == "L"
            available += 1
        end
    end

    print chairs

end

stupidchairs("CCCRUL") # 3
stupidchairs("CCCRUUL") # 4
stupidchairs("CCRULL") # 2


#C Someone Enters
#R Someone Leaves
#U Someone Enters
#L Someone leaves