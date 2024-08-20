def is_palindrome(x)
    output = false
    str = x.to_s
    reverse = str.reverse
    if str == reverse
        output = true
    end
    puts output
end

is_palindrome(121)
is_palindrome(-121)
is_palindrome(10)