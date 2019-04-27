class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected
    
    def configure_pemitted_parameters
        devise_parameters_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameters_sanitizer.permit(:account_update, keys: [:name])
    end
end