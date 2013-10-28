class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index,:edit,:update,:destroy]
  before_filter :correct_user, :only => [:edit,:update]
  before_filter :admin_user, :only => :destroy
  
  def index
    @users = User.paginate(:page => params[:page])
    @title = "All users"
  end
  
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
    @title = "Sign Up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => {:success => "Welcome #{@user.name}"}
    else
      @title = "Sign Up"
      render 'new'
    end
   end
   
   def edit
  
   
     @title = "Edit User"
   end
   
   def update
    
     if @user.update_attributes(params[:user])
       #it worked
       redirect_to @user, :flash => {:success => "Profile updated."}
     else
        @title = "Edit user"
        render 'edit'
     end
   end
   
   def destroy
     User.find(params[:id]).destroy
     redirect_to users_path, :flash => {:success => "User destroyed"}
   end
   
   private
   
   def authenticate
     deny_access unless signed_in?
   end
   
   def correct_user
     @user = User.find(params[:id])
     redirect_to(root_path) unless current_user?(@user)
   end
    
    def admin_user
      user = User.find(params[:id])
      redirect_to(root_path) unless (current_user.admin?  && !current_user?(@user))
    end
end