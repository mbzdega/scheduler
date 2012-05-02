class PagesController < ApplicationController
  def home
      @page_title = "Home Page for League Scheduler"
      @leagues = League.all
      @user = current_user
  end
end
