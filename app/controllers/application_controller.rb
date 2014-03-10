class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :unset_cookie
  before_action :current_language
  before_action :current_location

  def unset_cookie
  	cookies.delete :voted
  end

  def get_current_location
    Timeout::timeout(5) { Net::HTTP.get_response(URI.parse('http://api.hostip.info/country.php?ip=' + request.remote_ip )).body } rescue "EN"
  end

  def current_language
  	unless cookies.has_key? :language
      cookies[:language] = if current_location == "XX" 
                            "EN" 
                          else 
                            locale
                          end
	  end
  end

  def current_location
    unless cookies.has_key? :location
      cookies[:location] = get_current_location
    end
  end
end
