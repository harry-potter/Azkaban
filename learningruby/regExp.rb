line = "Lets test regular expression"

if(line) =~ /regular|ruby/
puts "word is found"
end

line2 = 'ruby python ruby python'

puts line2.sub(/ruby/,'python')
puts line2.gsub(/ruby/,'python')

def test_block()
puts 'start of method'
yield
yield
puts 'end of method'
end
test_block{puts 'test block'}


def test_blockwtarg()
puts 'start of method'
yield('argument1')
yield('argument2')
puts 'end of method'
end
test_blockwtarg{|argument| puts "test block with #{argument}" }


line=gets
puts line
