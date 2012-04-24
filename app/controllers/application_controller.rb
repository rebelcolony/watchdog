class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :admin?
  
  protected
  
  def authorize
    unless admin?
      redirect_to(:root, alert: "Unauthorized Access")
    end  
  end
  
  def admin?
    session[:password] == "secret"
  end

  def load_people
    @people = Person.all
  end

  helper_method :load_people
  
end


