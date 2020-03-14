class UsersController < ApplicationController
  def index
    
  end

  def search
    @users = User.search(params[:search])
  end

  
  def show
    
  end
end
