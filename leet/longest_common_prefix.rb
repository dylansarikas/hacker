def longest_common_prefix(strs)
    # output = ""
    if strs.length == 1
        puts strs[0]
        return strs[0]
    end
    number_checking = 1
    all_match = true
    while all_match == true
        all_match, lies, max = check_letter(strs, number_checking)[0], check_letter(strs, number_checking)[1], check_letter(strs, number_checking)[2]
        # puts "all match: #{all_match}"
        if lies == true
            puts ""
            return ""
        end
        if max == true && all_match == true
            puts strs[0][0, (number_checking)]
            return strs[0][0, (number_checking)]
        end
        if all_match == true
            number_checking += 1
        end
        # puts all_match
    end
    # puts all_match
    # puts number_checking
    if all_match == false && number_checking == 1
        puts ""
        return ""
    end
    puts strs[0][0, (number_checking - 1)]
    return strs[0][0, (number_checking - 1)]
end

def check_letter(strs, number_checking)
    check = strs[0][0, number_checking]
    match = false
    lies = false
    max = false
    count = 1
    while count < strs.length
        str = strs[count]
        # puts "check: #{check}"
        # puts "checking: #{str[0, number_checking]}"
        if str == ""
            lies = true
        end
        if str[0, number_checking] == check
            # puts "here"
            if str.length == check.length
                # puts 'NO WAY'
                max = true
                match = false
            end
            match = true
        else
            # puts "false"
            match = false
            break
        end
        count += 1
    end
    # puts "match: #{match}"
    return match, lies, max
end

def longest_common_prefix_better(strs)
    return "" if strs.empty?
    
    # Sort the array to get the first and last string lexicographically
    strs.sort!
    first = strs.first
    last = strs.last
    
    # Find the common prefix between the first and last string
    i = 0
    while i < first.length && i < last.length && first[i] == last[i]
      i += 1
    end
    
    first[0...i]
  end

longest_common_prefix(["flower","flow","flight"])
longest_common_prefix(["dog","racecar","car"])
longest_common_prefix(["a"])
longest_common_prefix(["",""])
longest_common_prefix(["flower","flower","flower","flower"])
longest_common_prefix(["aaa","aa","aaa"])
longest_common_prefix(["a","b"])
longest_common_prefix(["a","a","b"])
longest_common_prefix(["c","acc","ccc"])