class UsersController < ApplicationController
  def index
    @users=User.all 
    # special variable
  end

  def view
  end

  def new
  @user=User.new
  end
  def edit
    @user = User.find(params[:id])   
  end
  def create
    @user = User.new(user_params)   
    if @user.save   
      flash[:notice] = 'User added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit user!'   
      render :new   
    end   
  end
  def update
    @user = User.find(params[:id])   
    if @user.update_attributes(product_params)   
      flash[:notice] = 'User updated!'   
      redirect_to @user 
    else   
      flash[:error] = 'Failed to edit User!'   
      render :edit   
    end   
  end
  def show
    @user=User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])   
    if @user.delete   
      flash[:notice] = 'User deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this users!'   
      render :destroy   
    end   
  end
  def user_params   
    params.require(:user).permit(:name, :age, :email, :phone_number)   
  end   
end
