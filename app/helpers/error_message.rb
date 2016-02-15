class ErrorMessage

  def self.registration(sign_up_params, third_party)
    if sign_up_params[:email].empty? || sign_up_params[:name].empty? || (!third_party && sign_up_params[:password].empty?)
      error_message = I18n.t("custom.registration.error.missing_params")
    elsif (!third_party && sign_up_params[:password].length < set_minimum_password_length)
      error_message = I18n.t("custom.registration.error.password_length")
    elsif User.find_by(email: sign_up_params[:email]).present?
      error_message = I18n.t("custom.registration.error.email_taken")
    end
    error_message
  end


end