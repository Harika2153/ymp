class MainController < ApplicationController
    def index
      
      @user = User.find_by(params[:user_type])
      



      
    end
  end
  