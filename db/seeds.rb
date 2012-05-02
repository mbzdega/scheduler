# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {name: 'admin', email: 'admin@gmail.com', age: 28, password: 'admin', password_confirmation: 'admin',
    admin: true, player: true, coach: true, team_manager: true, league_manager: true},
    
  {name: 'player', email: 'player@gmail.com', age: 23, password: 'player', password_confirmation: 'player',
    admin: false, player: true, coach: false, team_manager: false, league_manager: false},
    
  {name: 'team_manager', email: 'team_manager@gmail.com', age: 24, 
    password: 'team_manager', password_confirmation: 'team_manager',
    admin: false, player: false, coach: false, team_manager: true, league_manager: false},
    
  {name: 'league_manager', email: 'league_manager@gmail.com', age: 25, 
    password: 'league_manager', password_confirmation: 'league_manager',
    admin: false, player: false, coach: false, team_manager: false, league_manager: true}])

contracts = Contract.create([
  {user_id: 1, team_id: 1},
  {user_id: 2, team_id: 1}])

leagues = League.create([
  {name: 'Iowa Premier Soccer League', manager: 'Teddy B'}])
  
seasons = Season.create([
  {name: 'Spring 2012', league_id: 1, current: true, final_schedule: 1},
  {name: 'Fall 2012', league_id: 1, current: false}])

teams = Team.create([
  {name: 'Team1', gender: 'men', home_field: 'field1', location: 'field1', rank: 5},
  {name: 'Team2', gender: 'men', home_field: 'field1', location: 'field1', rank: 1},
  {name: 'Team3', gender: 'men', home_field: 'field2', location: 'field2', rank: 3},
  {name: 'Team4', gender: 'men', home_field: 'field3', location: 'field3', rank: 4},
  {name: 'Team5', gender: 'women', home_field: 'field6', location: 'field6', rank: 12},
  {name: 'Team6', gender: 'men', home_field: 'field4', location: 'field4', rank: 10},
  {name: 'Team7', gender: 'men', home_field: 'field3', location: 'field3', rank: 11},
  {name: 'Team8', gender: 'men', home_field: 'field7', location: 'field7', rank: 7},
  {name: 'Team9', gender: 'women', home_field: 'field5', location: 'field5', rank: 8},
  {name: 'Team10', gender: 'men', home_field: 'field3', location: 'field3', rank: 9},
  {name: 'Team11', gender: 'men', home_field: 'field6', location: 'field6', rank: 6},
  {name: 'Team12', gender: 'men', home_field: 'field8', location: 'field8', rank: 2}])

enrollments = Enrollment.create([
  {season_id: 1, team_id: 1},
  {season_id: 1, team_id: 3},
  {season_id: 1, team_id: 5},
  {season_id: 1, team_id: 7},])

fields = Field.create([
  {name: 'Field1', field_num: 1},
  {name: 'Field2', field_num: 2},
  {name: 'Field3', field_num: 1},
  {name: 'Field4', field_num: 2},
  {name: 'Field5', field_num: 1},
  {name: 'Field6', field_num: 1},
  {name: 'Field7', field_num: 1},
  {name: 'Field8', field_num: 3}])
  
heuristics = Heuristic.create([
  {name: 'round robin'},
  {name: 'random'}])

schedules = Schedule.create([
  {name: 'test_schedule', manager: 'teddy_b', heuristic_id: 1, season_id: 1},
  {name: 'test_schedule_2', manager: 'teddy_b', heuristic_id: 1, season_id: 1}])

matches = Match.create([
  {schedule_id: 1, score1: 1, score2: 2, played: true},
  {schedule_id: 1, score1: 5, score2: 2, played: true},
  {schedule_id: 1, score1: 4, score2: 4, played: true},
  {schedule_id: 1, score1: 0, score2: 0, played: false},
  {schedule_id: 2, score1: 0, score2: 0, played: true},
  {schedule_id: 2, score1: 0, score2: 0, played: false},
  {schedule_id: 2, score1: 0, score2: 0, played: false}])
  
caps = Cap.create([
  {team_id: 1, match_id: 1},
  {team_id: 4, match_id: 1},
  {team_id: 2, match_id: 2},
  {team_id: 3, match_id: 2},
  {team_id: 1, match_id: 3},
  {team_id: 3, match_id: 3},
  {team_id: 5, match_id: 4},
  {team_id: 3, match_id: 4},
  {team_id: 10, match_id: 5},
  {team_id: 7, match_id: 5},
  {team_id: 1, match_id: 6},
  {team_id: 8, match_id: 6},
  {team_id: 4, match_id: 7},
  {team_id: 6, match_id: 7}])