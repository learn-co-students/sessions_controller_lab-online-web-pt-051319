class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      return redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
    end

    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/login'
    # redirect_to controller: 'application', action: 'hello'
  end
end
