def sockMerchant(n, ar)
    socks = ar.uniq
    #p socks
    #p ar
    pairs = 0
    for sock in socks
        #puts "sock"
        #puts sock
        total_sock = ar.count(sock)
        #puts "total"
        #puts total_sock
        pairs = pairs + (total_sock / 2)
        #puts "pairs"
        #puts pairs
    end
    
    puts pairs
    return pairs

end

sockMerchant(7, [1,2,1,2,1,3,2])
sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])