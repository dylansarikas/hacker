def birthdayCakeCandles(candles)
    sorted = candles.sort
    tallest = sorted[-1]
    count = 0
    for candle in sorted
        if candle == tallest
            count += 1
        end
    end

    puts count
    

end

abc = [4, 4, 1, 3]
birthdayCakeCandles(abc)