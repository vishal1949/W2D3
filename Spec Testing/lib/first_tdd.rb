
def remove_dups(arr)
    arr.uniq
end 
class Array

    def two_sum
        results = []
        i = 0
        while i < self.length - 1
            j = i + 1
            while j < self.length
                results << [i,j] if self[i] + self[j] == 0
                j += 1
            end
            i += 1
        end
        return results
    end

end

def my_transpose(arr)
    results = []
    i = 0
    arr.each do |ele|
        temp = []
        ele.each_with_index do |char, j|
          temp << arr[j][i] 
        end
        i += 1
        results << temp
    end
    results
end

def stock_picker(arr)
    profit = arr[1] - arr[0]
    buy = 0
    sell = 1
    i = 0
    
    while i < arr.length
        j = 2
        while j < arr.length
            if arr[j] - arr[i] > profit
                profit = arr[j] - arr[i]
                buy = i
                sell = j
            end
        j += 1
        end
        i += 1
    end
    [buy, sell]
end