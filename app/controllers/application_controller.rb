class ApplicationController < ActionController::Base

  before_action :authenticate_user!, except: [:index, :show]
  # before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  
    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:display_name])
    # end
  
  

  private
  
     def user_not_authorized
       flash[:warning] = "You are not authorized to perform this action."
       redirect_to(request.referrer || root_path)
     end
 

end
