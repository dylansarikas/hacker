def timeConversion(s)
    #puts s
    if s[-2] == "P" && s[0..1] != "12"
        switch = s[0..1].to_i
        #p switch
        switch = switch + 12
        switch = switch.to_s
        #p switch
        pieces = s.split(//)
        pieces[0] = switch[0]
        pieces[1] = switch[1]
        output = pieces[0..7].join
        #p output
        #p pieces
    elsif s[-2] == "A" && s[0..1] == "12"
        pieces = s.split(//)
        pieces[0] = "0"
        pieces[1] = "0"
        output = pieces[0..7].join
    else
        output = s[0..7]
    end

    p output

    

end

s = "07:05:45PM"
t = "08:12:37AM"
x = "12:05:39AM"
timeConversion(s)
timeConversion(t)
timeConversion(x)