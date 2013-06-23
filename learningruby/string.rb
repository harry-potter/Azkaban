#example code to understand working on string

person1 = "Jack"
#this copies reference
person2 = person1
#this creates a new object
person3 = person1.dup

person1[0] = "M"
puts person1
puts person2
puts person3
#this freezes the object. 
#person3.freeze
person3.freeze
person3[0] = "Jim"
