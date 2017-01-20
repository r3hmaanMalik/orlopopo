# 1000.times do |n|
# 	p_name = Faker::Commerce.product_name
# 	c_name = Faker::Company.name
# 	price =Faker::Commerce.price
# 	d_link = Faker::Internet.domain_name
	
# 	Product.create(name: p_name, compony_name: c_name,
# 		price: price, link: d_link ,
# 		image_link: Faker::Avatar.image )
# 		puts "product_name: #{p_name} "
# 		puts "compony_name: #{c_name}"
# 		puts "price: #{price}"
# 		puts "link: #{d_link}"
# 	end

# 100.times do |nn|
# 	rand_nm = rand(2..10)
# 	str = "{"
# 	rand_nm.times do |n|
# 		if n == 0	
# 			name = Product.find(rand(1..1000)).name 
# 			str+='"' + "#{name}" +'"'
# 		else
# 			name = Product.find(rand(1..1000)).name 
# 			str+=',"' +"#{name}" +'"'
# 		end
# 	end
# 	str += "}"

# 	FrequentItemSet.create(item: str)
# 	puts "#{nn}th Item set"
# end


100.times do |x|
 session=rand(1..20	)
 name = Product.find(rand(1..10)).name 
  
   if Mango.exists?(session:session)

   	prof=Mango.find_by(session:session)
   	visitx = prof.visit
  	visitx += ",#{name}"
   	prof.update_attributes(visit:visitx)
 	puts "#{x} update"
   else
    Mango.create(session:session,visit:name ,expire:Time.now + 30*60)
    puts "#{x} create"

 	end


end




 #  n1="beer,doritos"
 #  n2="apple,cheese"
 #  n3="beer,doritos" 
 #  n4="apple,cheese" 
 #  n5="apple,cheese" 
 #  n6="apple,doritos"


 # Mango.create(session:001,visit:n1 ,expire:Time.now + 30*60)
 # Mango.create(session:002,visit:n2 ,expire:Time.now + 30*60)
 # Mango.create(session:003,visit:n3 ,expire:Time.now + 30*60)
 # Mango.create(session:004,visit:n4 ,expire:Time.now + 30*60)
 # Mango.create(session:005,visit:n5 ,expire:Time.now + 30*60)
 # Mango.create(session:006,visit:n6 ,expire:Time.now + 30*60)