class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"] 
    end
    def after_sign_in_path_for(resource)
      '/'
    end
  end
end
