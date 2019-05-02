class StaticPagesController < ApplicationController

  def contact
  end

  def home
    @user = params[:id]
    @all_gossips = Gossip.all
  end
  def team
  end

  def landing
  	@user = params[:id]
  	@all_gossips = Gossip.all

  end

  def show_gossips
  	@gossip = Gossip.find(params[:gossips])
  end

  def show_authors
  	@author = User.find(params[:authors])
  end

  def show_city
    @city = City.find(params[:city_id])
    @users = User.where(city: params[:id])
    @gossips = Gossip.where(user: @users.id)
  end

end
