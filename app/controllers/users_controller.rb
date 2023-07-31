class UsersController < ApplicationController

  # http_basic_authenticate_with name:"dhh", password:"secret", except: [:index, :show]
  def index
    @users=User.all 
    # special variable
  end

  def show
    @user =User.find(params[:id])  
    # any name can use as variable name  
  end

  def new
    @user=User.new
  end

  def edit
    @user = User.find(params[:id])   
  end

  def create
    @user = User.new(user_params)  
    if @user.save!    
      redirect_to root_path 
      # or you can use your model name for redirection @user  
    else     
      render :new   
    end   
  end

  def update
    @user = User.find(params[:id])   
    if @user.update(user_params)   
      # flash[:notice] = 'User updated!'   
      # redirect_to @user
      redirect_to root_path
    else   
      # flash[:error] = 'Failed to edit User!'   
      render :edit  
    end   
  end


  def destroy
    @user = User.find(params[:id])   
      @user.destroy   
      # redirect_to root_path  
      redirect_to root_path 
      # it's predefine that after destroy redirect to page on root

  end

  private
  def user_params   
    params.require(:user).permit(:name, :age, :email, :phone_no, :image)   
  end   
end
