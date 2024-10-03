class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permit additional parameters for sign up and account update
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, addresses_attributes: [:address_line_1, :address_line_2, :city, :state, :country, :postal_code]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :role, addresses_attributes: [:address_line_1, :address_line_2, :city, :state, :country, :postal_code]])
  end
end
