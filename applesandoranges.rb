def countApplesAndOranges(s, t, a, b, apples, oranges)
    landOrange = 0
    landApple = 0
    for apple in apples
        if (apple + a) >= s && (apple + a) <= t
            landApple += 1
        end
    end

    for orange in oranges
        if (orange + b) >= s && (orange + b) <= t
            landOrange += 1
        end
    end

    p landApple
    p landOrange


end

countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6])
countApplesAndOranges(7, 10, 4, 12, [2, 3, -4], [3, -2, -4])