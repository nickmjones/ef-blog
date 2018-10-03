class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:author).permit(:full_name, :email, :shortbio, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:author).permit(:full_name, :email, :shortbio, :password, :password_confirmation, :current_password)
  end
end