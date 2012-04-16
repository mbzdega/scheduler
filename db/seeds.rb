# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

leagues = League.create([
  {name: 'Iowa Youth Soccer', manager: 'Teddy B'}])
  
seasons = Season.create([
  {name: 'Spring 2012', league_id: '1'},
  {name: 'Fall 2012', league_id: '1'}])

teams = Team.create([
  {name: 'Team1', home_field: 'field1', location: 'field1', rank: '5'},
  {name: 'Team2', home_field: 'field1', location: 'field1', rank: '1'},
  {name: 'Team3', home_field: 'field2', location: 'field2', rank: '3'},
  {name: 'Team4', home_field: 'field3', location: 'field3', rank: '4'},
  {name: 'Team5', home_field: 'field6', location: 'field6', rank: '12'},
  {name: 'Team6', home_field: 'field4', location: 'field4', rank: '10'},
  {name: 'Team7', home_field: 'field3', location: 'field3', rank: '11'},
  {name: 'Team8', home_field: 'field7', location: 'field7', rank: '7'},
  {name: 'Team9', home_field: 'field5', location: 'field5', rank: '8'},
  {name: 'Team10', home_field: 'field3', location: 'field3', rank: '9'},
  {name: 'Team11', home_field: 'field6', location: 'field6', rank: '6'},
  {name: 'Team12', home_field: 'field8', location: 'field8', rank: '2'}])

enrollments = Enrollment.create([
  {season_id: '1', team_id: '1'},
  {season_id: '1', team_id: '3'},
  {season_id: '1', team_id: '5'},
  {season_id: '1', team_id: '7'},])

fields = Field.create([
  {name: 'Field1', field_num: '1'},
  {name: 'Field2', field_num: '2'},
  {name: 'Field3', field_num: '1'},
  {name: 'Field4', field_num: '2'},
  {name: 'Field5', field_num: '1'},
  {name: 'Field6', field_num: '1'},
  {name: 'Field7', field_num: '1'},
  {name: 'Field8', field_num: '3'}])
  
heuristics = Heuristic.create([
  {name: 'random'},
  {name: 'round robin'}])