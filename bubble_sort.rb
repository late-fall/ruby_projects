arr = [88,1,3,2,-3,123,55,24,54]

def bubble_sort(arr)
    """
    sorting using bubble sort algorithm
    """
    i = arr.length - 1
    while i > 1
        for j in 0..(i-1)
            if arr[j] > arr[j+1]
                tmp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = tmp
            end
        end
        i -= 1
    end
    arr
end

p bubble_sort(arr)