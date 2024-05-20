class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    layout :layout_by_resources

    protected
    def layout_by_resources
        if devise_controller?
            "devise"
        else
            "application"
        end
    end
end
