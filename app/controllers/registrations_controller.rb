class RegistrationsController < Devise::RegistrationsController

    def Sign_up_params
        params.require(:user).permit(:fname, :lname, :email, :password)
    end

    
    def account_update_params
        params.require(:user).permit(:fname, :lname)
    end

end