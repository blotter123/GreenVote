class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter :prepare_for_mobile

  private

  def index
  	@client_ip = request.remote_ip
  	@remote_ip = request.env["HTTP_X_FORWARDED_FOR"]
  	@my_ip = request.env["HTTP_X_FORWARDED_FOR"] || request.remote_addr
 	@ip_addr = request.env['REMOTE_ADDR']
  end


def mobile_device?
  if session[:mobile_param]
    session[:mobile_param] == "1"
  else
    request.user_agent =~ /Mobile|webOS/
  end
end
helper_method :mobile_device?

def prepare_for_mobile
  session[:mobile_param] = params[:mobile] if params[:mobile]
  request.format = :mobile if mobile_device?
end
end