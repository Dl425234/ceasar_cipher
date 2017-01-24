def bubble_sort(arr)
    len = arr.length
    sort = true
    while(sort)
        swap = false
        for i in 1..(len-1)
            if arr[i-1]>arr[i]
               swap = true
               arr[i-1],arr[i] = arr[i], arr[i-1] #swap values
            end
        end
        if(!swap)
           sort = false 
        end
    end#end while
    return arr
end

#puts bubble_sort([4,3,79,2,0,2])#0,2,2,3,4,79

def bubble_sort_by(arr)
    return unless block_given? 
    len = arr.length
    sort = true
    while(sort)
        swap = false
        for n in 1..(len-1)
           if yield(arr[n-1], arr[n]) > 0
                arr[n-1], arr[n] = arr[n], arr[n-1]
                swap = true end
        end
        if(!swap)
           sort = false 
        end
    end#end while
    return arr
end

puts bubble_sort_by(["hi","welcome", "hello","hey"]) { |left,right|
		left.length - right.length
	}
    