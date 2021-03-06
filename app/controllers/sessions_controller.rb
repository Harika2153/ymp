class SessionsController < ApplicationController
    def new
    end
    def create
        user = User.find_by(email: params[:email])
        #user.owner?
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            # if user_type == 0
                if user.owner? 
                    redirect_to owner_path, notice: "Logged in successfully"
                    
                else
                    redirect_to menu_path, notice: "Logged in successfully"
                    
                        
                end            
        else
            flash[:alert] = "Ivalid email or password"
            render :new
        end 
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end