class ApplicationController < ActionController::Base
  def homepage
    cookies.encrypted[:test] = "Bolacha"
    session[:test] = "Bolacha2"
  end
end
