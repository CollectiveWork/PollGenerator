class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :unset_cookie
  before_action :current_language

  def unset_cookie
  	cookies.delete :voted
  end

  def current_language
  	unless cookies.has_key? :location
	    locale = Timeout::timeout(5) { Net::HTTP.get_response(URI.parse('http://api.hostip.info/country.php?ip=' + request.remote_ip )).body } rescue "EN"
	    locale = 'EN' if locale == 'XX'
	    cookies[:location] = locale
	  end
  end
end
