class CallbacksController < Devise::OmniauthCallbacksController
    def github
        @user = Userfrom_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect(@user)
    end
end 