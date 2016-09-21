class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # p "in create route \n\n\n"
    # render plain: params[:user].inspect
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      @errors = user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    if @user
      if user_logged_in? && current_user.id == @user.id
        render 'show'
      end
    else
      redirect_to '/sessions/new'
    end
  end


  private

  def user_params
    params.require(:user).permit(:entity_name, :entity_email, :password)
  end

end
