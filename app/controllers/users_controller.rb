class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update, :my_schedule, :teams, :leagues]
  before_filter :correct_user, :only => [:edit, :update, :my_schedule, :teams, :leagues]
  #correct_user defines @user = User.find(params[:id])
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      sign_in @user
      flash[:success] = "User creation successful!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile Updated."
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def my_schedule
    @user = User.find(params[:id])
    @matches = @user.matches
  end
  
  def teams
    @my_teams = @user.teams
    @available_teams = Team.all
  end
  
  def leagues
    @my_leagues = []
  end
  
private

  def authenticate
    deny_access unless logged_in?
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end
  
end
