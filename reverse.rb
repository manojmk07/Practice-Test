def rotate_array(arr, positions) 
n = arr.length 
return arr if n == 0 || positions % n == 0 
positions = positions % n 
reverse(arr, 0, n - 1) 
reverse(arr, 0, positions - 1) 
reverse(arr, positions, n - 1) 
arr 
end 
def reverse(arr, start, end_idx) 
while start < end_idx 
arr[start], arr[end_idx] = arr[end_idx], arr[start] 
start += 1 
end_idx -= 1 
end 
end 
arr = [1, 2, 3, 4, 5] 
rotated = rotate_array(arr, 2) 
puts rotated.inspect 
