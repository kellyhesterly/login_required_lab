class SecretsController < ApplicationController
    before_action :current_user

    def new
    end

    def show
        redirect_to controller: "sessions", action: "new" if !current_user
    end

    def destroy
        session.delete [:name]
        redirect_to controller: 'sessions', action: 'new' 
    end
end