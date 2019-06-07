class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :set_time
    include SessionHelper

    def hello
        render html: "hello, world!"
    end

    def set_time
        @time = Time.now
    end


    private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end


end