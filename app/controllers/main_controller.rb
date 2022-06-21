class MainController < ApplicationController
    def index
      if session[:user_id]
        @user = User.find(session[:user_id])
      end        
      #if params[:user_type] == 1
        
      


      
    end
  end
  