the_count=[1,2,3,4,5]
fruits=['apples','oranges','pears','apricots']
change=[1,'pennies',2,'dimes',3,'quarters']
#this first kind of for-loop goes through a list
#in a more tranditional style found in other languages
for number in the_count
	puts "This is count#{number}"
end

#same as above,but in a more Ruby style
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end
#another style
change.each{|i| puts "I got #{i}"
                puts i}
elements=[]
(0..5).each do |i|
	subelements=[]
	(0..5).each do |j|
		subelements<<i*j
    end
    elements<<subelements
end
elements.each_index do |x|
	z=elements[x]
	z.each_index do |y|
		puts "elements#{x}#{y}=#{elements[x][y]}"
	end
end
p elements
