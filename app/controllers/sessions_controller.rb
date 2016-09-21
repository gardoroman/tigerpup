class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # render plain: params[:user].inspect
    #
    @user = User.find_by_entity_email(params[:user][:entity_email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = ["Error Logging in"]
      render 'new'
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end

end
