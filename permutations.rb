#recursion 
def perm arr, i=0
  return arr if i == arr.size
  (i..arr.size-1).each do |j|
    arr[i], arr[j] = arr[j], arr[i]
    perm arr, i+1
    arr[i], arr[j] = arr[j], arr[i]
  end
end

p perm 'ABC'

=begin | print:  
#-------------------------
"ABC"
"ACB"
"BAC"
"BCA"
"CBA"
"CAB"
#-------------------------  
=end

