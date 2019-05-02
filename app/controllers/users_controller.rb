class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	puts "$"* 60
  	puts params
  	User.create(city_id: 4, password:params[:user][:password], email:params[:user][:email], last_name:params[:user][:last_name], first_name:params[:user][:first_name], description:params[:user][:description])
  	puts "$"* 60
  	redirect_to root_path	
  end

  def show
  end
end
