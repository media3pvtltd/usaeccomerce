class AutenticationController < ApplicationController
	layout 'home'
  before_action :pass_check, only: :usercreate
  before_action :email_exist, only: :usercreate
  	
 

  def usercreate

  	@member=User.new(req_params)
  	@member.password= params[:password]
   	if @member.save
   		flash[:notice]="Your registration is completed please login here"
   		redirect_to root_path

    else
       redirect_to autentication_index_path
    end
  	

  end

  def login


  end
  def create
    @member=User.find_by_email(params[:email])
    
    unless @member.nil?

      if @member.password == params[:password]
          session[:current_user_id]=@member.id
          redirect_to :controller => :home, :action => :index
      else
          flash[:error]="Your login is failed please enter correct password"
          redirect_to root_path
      end
    else
         flash[:error]="Your login is failed please enter correct email"
          redirect_to root_path

    end
  end
  def logout
    session[:current_user_id] =nil
    redirect_to root_path
  end

  private

  def req_params
   	params.permit(:firstname,:lastname,:email,:password,:address,:phonenumber)
  end

  def email_exist
    #binding.pry
    unless User.find_by_email(req_params['email']).nil?
      flash[:error] = 'Email already exists.You enter new email address'
      redirect_to autentication_index_path
    end
  end

  def pass_check
    unless params[:password] == params[:conformpassword]
      flash[:error] = "Password and confirmation password doesn't match"
      redirect_to autentication_index_path
    end
  end
  
end
