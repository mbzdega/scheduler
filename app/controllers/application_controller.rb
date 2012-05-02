class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include SchedulesHelper
  include SessionsHelper
end
