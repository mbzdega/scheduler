class MatchesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @match = Match.new
  end

  def edit
  end

  def create
    @match = Match.new(params[:match])
    @match.save
  end

  def update
  end

  def destroy
  end
end
