require 'byebug'

#O(n^2) quadratic time
#O(1) constant space
def two_sum?(arr, target_sum)
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            next if i == j
            return true if arr[i] + arr[j] == target_sum
        end
    end

    false
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

#O(nlogn) linearithmic time
#O(n) linear space
def two_sum1?(arr, target_sum)
    sorted_arr = arr.sort
    length = arr.length - 1

    mid = arr.length / 2

    if mid < target_sum
        (0...mid).any? { |i| arr[i] + arr[i+1] == target_sum }
    else
        (mid...length).any? { |i| arr[i] + arr[i+1] == target_sum }
    end
end

# arr = [0, 1, 5, 7]
# p two_sum1?(arr, 6) # => should be true
# p two_sum1?(arr, 10) # => should be false


#O(n) linear time
#O(n) linear space
def two_sum2(arr, target_sum)
    hash = {}

    arr.each do |el|
        return true if hash[target_sum - el]
        hash[el] = true
    end

    false
end


# arr = [0, 1, 5, 7]
# p two_sum2(arr, 6) # => should be true
# p two_sum2(arr, 10) # => should be false


