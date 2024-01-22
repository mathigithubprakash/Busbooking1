class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    def index
      @users = User.includes(ticket: [:bus, :route]).all
      respond_to do |format|
        format.html { render 'index' } # Assuming you have an index.html.erb file in the app/views/users directory
      end
    end
    
  
    #def show
    #  @user = User.find(params[:id])
      
    #end
  
    private
  
    def set_user
      @user = User.find(params[:id])
   
    end
end
