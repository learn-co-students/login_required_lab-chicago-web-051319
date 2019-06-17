class SessionsController < ApplicationController
    def new
    end

    def create
        session[:name] = params[:name]
        if session[:name] == '' || session[:name] == nil
            redirect_to root_path
        else
            redirect_to '/'
        end
    end

    def destroy
        session[:name] = nil
        redirect_to root_path
    end
end