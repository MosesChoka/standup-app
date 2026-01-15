class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_url,  alert: "You are not authorized to access thi page"   
    end
    
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    layout :layout_by_resource

    helper_method :current_account

    def current_account
      @current_account ||= current_user.account
      @current_account
    end

    protected
    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end
end
