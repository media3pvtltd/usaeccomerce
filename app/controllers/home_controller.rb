class HomeController < ApplicationController
	layout 'home'
    before_action :current_user

		#========================cake===================
	def inner1
		@cart=Cart.new()
		 
	end
						#========================coffee===================
	def inner2
		@cart=Cart.new()
	end
	                 #========================tea===================
	def inner3
		@cart=Cart.new()
		
	end
	                 #=======================juice=======================
	def inner4
		@cart=Cart.new()	
	end

	def innercreate1
		
		count=params[:product].count-1
		

		(0..count).map {  |f| 

			@cart=Cart.new(:product => params[:product]["#{f}"],:quantity => params['quant']["#{f}"],:price => params['price']["#{f}"],:user_id => params[:user]["#{f}"])
			@cart.save

		} 
		
		
		redirect_to home_cart_path
		
	end

	def innercreate2
		
		count=params[:product].count-1
		

		(0..count).map {  |f| 

			@cart=Cart.new(:product => params[:product]["#{f}"],:quantity => params['quant']["#{f}"],:price => params['price']["#{f}"],:user_id => params[:user]["#{f}"])
			@cart.save

		} 
		
		
		redirect_to home_cart_path
		
	end


	def innercreate3
		
		count=params[:product].count-1
		

		(0..count).map {  |f| 

			@cart=Cart.new(:product => params[:product]["#{f}"],:quantity => params['quant']["#{f}"],:price => params['price']["#{f}"],:user_id => params[:user]["#{f}"])
			@cart.save

		} 
		
		
		redirect_to home_cart_path
		
	end
	def innercreate4
		
		count=params[:product].count-1
		

		(0..count).map {  |f| 

			@cart=Cart.new(:product => params[:product]["#{f}"],:quantity => params['quant']["#{f}"],:price => params['price']["#{f}"],:user_id => params[:user]["#{f}"])
			@cart.save

		} 
		
		
		redirect_to home_cart_path
		
	end

	def cart
		@cartitems=Cart.where('user_id = ?',current_user.id)
		@cartitemscount=Cart.where('user_id = ? and product != ?',current_user.id,'0').count

		
		
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

	def productdele
		pdel=Cart.delete(params[:id])
		if pdel
			redirect_to home_cart_path
		end
	end

end
