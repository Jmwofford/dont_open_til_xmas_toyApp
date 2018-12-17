class UserController < ApplicationController
  def index 
  # lorem_text_without_reasoning
  end 
  
 def create 
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id 
      redirect_to sessions
    else
      flash[:register_errors] = user.errors.full_messages
      redirect_to new_session_path
    end 
  end

  def new
  @user = User.new
  current_user
  end

  def edit
    # lorem_text_without_reasoning
  end

  def show
    # lorem_text_without_reasoning
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
