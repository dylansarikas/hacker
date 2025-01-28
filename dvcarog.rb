def nerdify(text)
    new = text.split(//)
    length = new.length
    counter = 0
    while counter < length
        if new[counter] == "a" || new[counter] == "A"
            new[counter] = 4
        end
        if new[counter] == "e" || new[counter] == "E"
            new[counter] = 3
        end
        if new[counter] == "l" || new[counter] == "L" || new[counter] == "i" || new[counter] == "I"
            new[counter] = 1
        end
        counter = counter + 1
    end
    new = new.join()
    puts new  
end
    
    
    # 🔒 No changes below this line
nerdify("Fundamentals")