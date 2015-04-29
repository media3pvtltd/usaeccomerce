class HomeController < ApplicationController
	layout 'home'
	
    before_action :current_user

	def index
		#@homes = Refineryhome.order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)
	end

	def inner1

		 #@homes=Refineryhome.find_by_id(params[:id])
	end

	def inner2
		
	end
	def inner3

		
	end

	def inner4
		
	end

	def cart
		
	end
	def index
		#@homes = Refineryhome.order(created_at: :desc).paginate(:page => params[:page], :per_page => 4)
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

	def cart
		#@homes=Refineryhome.all
	end

	private

	def req_params

		#params.permit(:product_id, :product, :quantity)
		
	end

end
