def birthdayCakeCandles(candles)
    #p candles
    sorted = candles.sort
    #p sorted
    tallest = sorted[-1]
    count = 0
    for candle in sorted
        if candle == tallest
            count += 1
        end
    end

    puts count
    #p candles
    

end

abc = [4, 4, 1, 3]
birthdayCakeCandles(abc)