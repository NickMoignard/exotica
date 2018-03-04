class ApplicationController < ActionController::Base
  include Response
  include ExceptionHandler

  protect_from_forgery with: :exception

  # Allow http requests other than GET from Postman
  skip_before_action :verify_authenticity_token
end
