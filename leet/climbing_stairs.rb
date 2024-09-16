def climb_stairs(n)
    steps = [1, 2]
    if n == 1
        puts 1
        return 1
    elsif n == 2
        puts 2
        return 2
    else
        index = 2
        while index < n
            steps.push((steps[-1] + steps[-2]))
            index += 1
        end
    end
    puts steps[-1]
    return steps[-1]
end

climb_stairs(1) #1
climb_stairs(2) #2
climb_stairs(3) #3
climb_stairs(4) #5
climb_stairs(5) #8
climb_stairs(6) #13