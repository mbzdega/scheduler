class SchedulesController < ApplicationController


  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
    @matches = @schedule.matches
    @league = League.find(Season.find(@schedule.season_id).league_id)
  end

  def new
    @schedule = Schedule.new
  end
    
  def create 
    
    @schedule = Schedule.new(params[:schedule])    
    round_robin(@schedule)
    
    if @schedule.save
      redirect_to @schedule
    end
  end

  def update
    @schedule = Schedule.find(params[:id])

  respond_to do |format|
    if @schedule.update_attributes(params[:schedule])
      format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
    else
      format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    
    respond_to do |format|
      format.html { redirect_to schedules_url }
    end
  end 
end

#    def edit
#      @schedule = Schedule.find(params[:id])
#    end
