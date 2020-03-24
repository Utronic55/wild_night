class UsersController < ApplicationController
  def index
    return nil if params[:keyword] == ""
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] )
    respond_to do |format|
      format.html
      format.json
    end
    
  end

  # def search
  #   @users = User.search(params[:search])
  # end

  
  def show
    
  end
end
