def plus_one(digits)
    p (digits.join.to_i + 1).to_s.split(//).map { |i| i.to_i }
end

plus_one([1,2,3])
plus_one([4,3,2,1])
plus_one([9])