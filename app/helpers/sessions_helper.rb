module SessionsHelper
  
  def login(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    self.current_user = user # defines the current user for the session
  end
  
  # explicit setter method
  def current_user=(user)
    @current_user = user
  end
  
  # @current_user = @current_user or user_from_remember_token
  # || is the or symbol.  The first true statement satisfies the condition.
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def logout
    cookies.delete(:remember_token)
    self.current_user = nil
  end
  
  def deny_access
    store_location
    flash[:notice] = "Please Log In to view this page."
    redirect_to login_path
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || [default])
    clear_return_to
  end
  
  def current_user?(user)
    user == current_user
  end
  
private
# methods available to the sessions helper only
  
  def user_from_remember_token
    User.authenticate_with_salt(*remember_token) # remember_token = [id, salt]
  end
  
  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end
  
  def store_location
    session[:return_to] = request.fullpath
  end
  
  def clear_return_to
    session[:return_to] = nil
  end
  
end
