def merge_two_lists(list1, list2)
    counter = 0
    while counter < list1.length
        count = 0
        while count < list2.length && list1.length != 0
            if list1[counter] >= list2[-1]
                list2 << list1[counter]
                list1.shift
                count -= 1
            elsif list1[counter] < list2[count]
                list2[count, 0] = list1[counter]
                # puts "here"
                list1.shift
                count -= 1
            end
            count += 1
            # p "list one #{list1}"
            # p "list two #{list2}"
            # p count
        end
        counter += 1
    end
    return list2
end

merge_two_lists([1,2,4],[1,3,4])
merge_two_lists([],[])
merge_two_lists([],[0])
merge_two_lists([5,6,7,8,9],[1,3,4])