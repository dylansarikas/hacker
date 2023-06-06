def kangaroo(x1, v1, x2, v2)
   h = x2 - x1

   if v1 > v2 && h % (v1-v2) == 0
        puts "YES"
        return "YES"
   else
        puts "NO"
        return "NO"
   end

end

kangaroo(0, 3, 4, 2)
kangaroo(9, 3, 1, 7)
kangaroo(0, 2, 5, 3)
kangaroo(8, 5, 1, 2)
kangaroo(0, 5, 0, 7)
kangaroo(112, 9563, 8265, 244)
kangaroo(4523, 8092, 9419, 8076)