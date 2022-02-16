class SessionsController < ApplicationController
    before_action :current_user

    def new
    end

    def create
      if !current_user
        redirect_to controller: 'sessions', action: 'new' 
      end
      session[:name] = params[:name]
    end

    def destroy
            session.delete :name
    end
end