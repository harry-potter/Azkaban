#arrays
a = %w[1 2 3 4 5]
b=["k","j"]
puts a.length
puts a.class
puts a[0]
#negative index counts from end
puts a[-1]
#array index with starting position and count
puts a[1,3]
puts a[1..3]
#array can be used as stack
stack = []
stack.push "red"
stack.push "green"
puts "stack result"
puts stack.pop
puts stack.pop
#array can be used as queue
queue = []
queue.push "first"
queue.push "second"
puts "queue result"
puts queue.shift
puts queue.shift
#unshift adds element at the head
#last and first 
array = [ 1, 2, 3, 4, 5, 6, 7 ]
p array.first(4)
p array.last(3)





