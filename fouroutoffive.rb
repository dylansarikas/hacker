def miniMaxSum(arr)
    #p arr
    arr = arr.sort
    min = arr.take(4).sum
    max = arr.reverse.take(4).sum
    
    print min
    print " "
    print max
    

end

abc = [1, 2, 3, 4, 5]
miniMaxSum(abc)