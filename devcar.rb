def nerdify(text)
    #puts "start"
    new = text.split(//)
    #puts new
    length = new.length()
    #puts length
    counter = 0
    while counter < length
        #puts new[counter]
        if new[counter] == "a" || new[counter] == "A"
            new[counter] = 4
            #puts "here"
        end
        if new[counter] == "e" || new[counter] == "E"
            new[counter] = 3
            #puts "there"
        end
        if new[counter] == "l" || new[counter] == "L" || new[counter] == "i" || new[counter] == "I"
            new[counter] = 1
            #puts "everywhere"
        end
        counter = counter + 1        
    end

    new = new.join()
    puts new
    return new

end
    
    
    # 🔒 No changes below this line
nerdify("Fundamentals")