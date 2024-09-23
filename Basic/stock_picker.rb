def stock_picker(arr)
    best_pair = [0,1]
    arr.each_with_index do |val,i|
        for j in (i...arr.length) do
            if (arr[j]-arr[i]) > (arr[best_pair[1]]-arr[best_pair[0]])
                best_pair[0]=i
                best_pair[1]=j
            end
        end
    end
    return best_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])