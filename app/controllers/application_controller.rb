class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  after_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://snipp-et.herokuapp.com'' 
    headers['Access-Control-Request-Method'] = '*' 
  end
end
