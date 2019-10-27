class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 


    def create 
        params.permit!
        if params[:name].nil? || params[:name] == ''
            redirect_to '/login'
        else 
            session[:name] = params[:name]
            redirect_to '/'
        end 
    end 

    def destroy 
        session.delete :name 
    end 

    private 
    def session_params 
        params.permit(:name)
    end 
end 