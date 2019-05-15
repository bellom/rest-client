class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :set_time

    def hello
        render html: "hello, world!"
    end

    def set_time
        @time = Time.now
    end

end