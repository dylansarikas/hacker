def is_valid_old(s)
    arr = s.split("")
    opening_match = {"(" => ")", "{" => "}", "[" => "]"}
    closing_match = {")" => "(", "}" => "{", "]" => "["}
    # p match
    output = false
    # arr.push(arr.shift)
    # if !arr.include?(")") || !arr.include?("}") || !arr.include?("]")
    #     puts false
    #     return false
    # end
    while arr.length > 1
        # p arr
        if opening_match[arr[0]]
            # puts "wow"
            arr.push(arr.shift)
        else
            if arr[0] == opening_match[arr[-1]]
                # puts "here"
                arr.pop
                arr.shift
                arr.push(arr.shift)
                output = true
            else
                # puts "break"
                output = false
                break
            end
        end
    end
    puts output
    return output
end

def is_valid(s)
    arr = s.split("")
    opening_match = {"(" => ")", "{" => "}", "[" => "]"}
    closing_match = {")" => "(", "}" => "{", "]" => "["}
    pancake_stack = []
    output = false
    while arr.length > 0 || pancake_stack.length > 0
        # puts "arr: #{arr}"
        # puts "pancake_stack: #{pancake_stack}"
        if opening_match[arr[0]]
            # puts "wow"
            pancake_stack.push(arr.shift)
        else
            # puts "no"
            if arr.length > 0 && closing_match[arr[0]] == pancake_stack[-1]
            # puts "good"
            arr.shift
            pancake_stack.pop
            output = true
            else
                # puts "oopsie"/
                output = false
                puts output
                return output
            end
        end
    end
    puts output
    return output
end

is_valid("(())")  
is_valid("([")
is_valid("(")
is_valid("((")
is_valid("()")
is_valid("()[]{}")
is_valid("(]")
is_valid("[()]{}")
is_valid("([]{})")
is_valid("([)]")
is_valid("{[]}")
is_valid("([]){")