class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def home
    end

    def sign_up
    end

    def customer
    end

    def restaurant
    end

    def organization
    end

end
