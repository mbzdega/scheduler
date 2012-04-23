class PagesController < ApplicationController
  def home
      @page_title = "Home Page for League Scheduler"
      @leagues = League.all
  end
end
