class ApplicationController < ActionController::Base
  
  respond_to :html, :json

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

	

	def set_csrf_cookie_for_ng
	  cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
	end

  private
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) << :username
	  end

  protected
	  # In Rails 4.2 and above
	  def verified_request?
	  	# byebug
	    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
	  end

end
