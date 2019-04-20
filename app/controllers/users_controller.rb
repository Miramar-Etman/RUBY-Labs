class UsersController < ApplicationController
  def new
    @user = User.new 
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end
  private
  def article_params
    params.require(:user).permit(:name, :email,:password)
  end
end
