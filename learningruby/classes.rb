#Classes and objects practice

class BookInStock
        #define attribute reader to access instance variable
        attr_reader :isbn
        #attribute writer
        attr_writer :cost
        #read and write
        attr_accessor  :price
	def initialize(isbn,price,cost)
		@isbn = isbn
		@price = Float(price)
      	end
      	#override to_s method
	def to_s
		puts "isbn= #{@isbn}, price= #{@price}"
	end
	#set values for instance variable
        def setprice=(new_price)
	        @price= new_price
	end 
	b1 = BookInStock.new('isbn1',3,2)
	p b1
	b2 = BookInStock.new('isbn2',3.14,2.14)
	p b2
	
	
end

b4 =  BookInStock.new('isbn4',4,3)
b4.setprice=b4.price*24
puts b4.price

