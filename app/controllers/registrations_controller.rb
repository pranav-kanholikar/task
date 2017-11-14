class RegistrationsController < Devise::RegistrationsController

    def sign_up_params
        params.require(:user).permit(:fname, :lname, :email, :password, :role)
    end

    
    def account_update_params
        params.require(:user).permit(:fname, :lname, :role)
    end

end