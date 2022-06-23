class MainController < ApplicationController
    def index
      if session[:user_id]
        @user = User.find(session[:user_id])
        redirect_to menu_path
      end        
      #if params[:user_type] == 1
        
      


      
    end
  end
  