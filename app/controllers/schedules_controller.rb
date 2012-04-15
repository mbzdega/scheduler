class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
    @teams = @schedule.teams
    @matches = @schedule.matches
  end

  def new
    @schedule = Schedule.new
  end
    
  def create 
    def round_robin(schedule)
      teams = schedule.team_ids
      x = 0
      while x < teams.length
        y = x + 1    
        while y < teams.length
          team1 = Team.find(teams[x])
          team2 = Team.find(teams[y])
          @match = Match.create
          @match.teams.push(team1)
          @match.teams.push(team2)
          @schedule.matches.push(@match)
          y += 1
        end
        x += 1
      end
    end
    
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
