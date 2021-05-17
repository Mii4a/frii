# frozen_string_literal: true

class Api::V1::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  def twitter
    callback_from(twitter)
  end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  protected

  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.env'])

    if @user.persisted?
      sign_in @user, event: :authentication

      if request.env['omniauth.params']['apiRequest']
        render json: {status: :success, data: @user, message: "Login success"}
      else
        redirect_to after_sign_in_path_for(@user)
      end

    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"].except("extra")
    end
  end

  def assign_provider_attrs(user, auth_hash)

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
