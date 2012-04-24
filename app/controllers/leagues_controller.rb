class LeaguesController < ApplicationController

  # GET /leagues
  def index
    @leagues = League.all
  end

  # GET /leagues/:id
  def show
    @league = League.find(params[:id])
    @current_season = @league.seasons.where(:current => true).first
    @current_schedule = @current_season.final_schedule
  end
  
  # GET /league/:id/teams
  def teams
    @league = League.find(params[:id])
    @current_season = @league.seasons.where(:current => true).first
    @teams = @current_season.teams
  end
  
  def fields
    @league = League.find(params[:id])
    @current_season = @league.seasons.where(:current => true).first
  end
  
  # GET /league/:id/past_seasons
  def past_seasons
    @league = League.find(params[:id])
    @past_seasons = @league.seasons.where('current = ?', false).all
  end
  
  def rules
    @league = League.find(params[:id])
  end
  
  def contacts
    @league = League.find(params[:id])
  end

  # GET /leagues/new
  def new
    @league = League.new
  end

  # GET /leagues/1/edit
  def edit
    @league = League.find(params[:id])
  end

  # POST /leagues
  def create
    @league = League.new(params[:league])

    respond_to do |format|
      if @league.save
        format.html { redirect_to @league, notice: 'League was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /leagues/1
  def update
    @league = League.find(params[:id])

    respond_to do |format|
      if @league.update_attributes(params[:league])
        format.html { redirect_to @league, notice: 'League was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /leagues/1
  def destroy
    @league = League.find(params[:id])
    @league.destroy

    respond_to do |format|
      format.html { redirect_to leagues_url }
    end
  end
end
