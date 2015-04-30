class HomeController < ApplicationController
	layout 'home'
    before_action :current_user

	def inner1

		 
	end

	def inner2
		
	end
	def inner3

		
	end

	def inner4
		@cart=Cart.new()	
	end

	def innercreate
		
		count=params[:product].count-1
		

		(0..count).map {  |f| 

			@cart=Cart.new(:product => params[:product]["#{f}"],:quantity => params['quant']["#{f}"],:price => params['price']["#{f}"],:user_id => params[:user]["#{f}"])
			@cart.save

		} 
		
		
		redirect_to home_cart_path
		
	end

	def cart
		
	end
	
	def inner

		 #@homes=Refineryhome.find_by_id(params[:id])
		 #@cart = Cart.new
		 #@homes = Refineryhome.all
	end

	def create
		# count=params[:product].count-1
		# (0..count).each do |f|
		# 	@cart=Cart.new(:product_id => params[:product]['f'],:quantity => params[:product]['f'],:price => params[:price],:user_id => params[:user_id])
		# 	@cart.save
		# end
		# @cart =  Cart.new(req_params)
		# if @cart.save
		# #redirect_to forum_topic_path(params[:refforum_id])
		# redirect_to home_cart_path
		
		
	end

end
