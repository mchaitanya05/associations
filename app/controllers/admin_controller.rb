class AdminController < ApplicationController
  def login
  end

  def create
    if params[:username]=="admin" && params[:password]=="admin"
      session[:admin] = "admin"
      if params[:remember_me] === '1'
        cookies[:username]  = params[:username]
      else 
        cookies.delete(:username)
      end
      redirect_to books_path
    else
      flash[:error] = "Invalid credentials Try again"
      render :login
    end
  end
end
