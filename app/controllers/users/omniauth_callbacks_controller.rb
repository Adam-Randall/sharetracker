class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    register("facebook")
  end

  def twitter
    register("twitter")
  end

  def linkedin
    register("linkedin")
  end

  def gplus
    register("gplus")
  end

  def windowslive
    register("windowslive")
  end


  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  def passthru
    super
  end

  # GET|POST /users/auth/twitter/callback
  def failure
    super
  end

  # protected

  # The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    #super(scope)
    flash[:error] = I18n.t("custom.registration.error.invalid_omniauth")
    redirect_to root_path
  end

  protected
  def register(provider)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      provider = "Google Plus" if provider == "gplus"
      set_flash_message(:notice, :success, :kind => "#{provider}".titleize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"]
      flash[:error] = ErrorMessage.registration(request.env["omniauth.auth"][:info], true)
      redirect_to new_user_registration_url
    end
  end

end
