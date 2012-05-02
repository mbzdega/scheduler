module SchedulesHelper

# Helper methods are automatically available to views.  To make them available to controllers
# add them to the application_controller with Include SchedulesHelper
  
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

  def random(schedule, n)
    teams = schedule.team_ids
    i = 1

    while i <= n
    x = rand(n)
    y = rand(n)

    #need to add a way to make sure each team is getting matches

    unless x == y
        team1 = Team.find(teams[x])
        team2 = Team.find(teams[y])
        @match = Match.create
        @match.teams.push(team1)
        @match.teams.push(team2)
        @schedule.matches.push(@match)
        i += 1
      end
    end
  end
  
end
