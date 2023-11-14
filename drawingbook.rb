def pageCount(n, p)
    # Write your code here
    last = n
    start = 0
    if p.even? == true && n.even? == false
        last = n - 1
    elsif p.odd? == true && n.odd? == true
        start = 1
    elsif p.odd? == true && n.odd? == false
        last = n + 1
        start = 1
        #puts "I DID THE THING"
    end

    fowards = start
    backwords = last

    forwards_count = 0
    backwords_count = 0

    while backwords > p
        backwords_count += 1
        backwords -= 2
    end

    while fowards < p
        forwards_count += 1
        fowards += 2
    end

    turns = backwords_count
    if forwards_count < backwords_count
        turns = forwards_count
    end

    #print n
    #p last
    #p start
    #p backwords_count

    puts turns
    return turns

end

pageCount(5, 3)
pageCount(6, 2)
pageCount(5, 4)
pageCount(6, 3)