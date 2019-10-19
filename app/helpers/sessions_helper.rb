module SessionsHelper

    def is_logged_in?
        !!session[:name]
    end
end
