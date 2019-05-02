class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:index, :edit, :new, :create, :show]

  def index
  	@gossip = Gossip.all
  end

  def edit
  @gossip = Gossip.find(params[:id])	
  end
  
  def show
  	@gossip = Gossip.find(params[:gossips])
  end

  def update
  	@gossip = Gossip.find(params[:id])
puts "$" * 60
puts ""
puts "$" * 60
	@gossip.update(title:"#{params[:gossip][:title]}", content: "#{params[:gossip][:content]}", user_id:session[:user_id])
  redirect_to contact_path
  end

  def new
  	@new_gossip = Gossip.new
  end

  def create

Gossip.create(title: "#{params[:gossip][:title]}", content: "#{params[:gossip][:content]}", user_id:session[:user_id])
redirect_to root_path
  end

def destroy
	@gossip = Gossip.find(params[:id]).id
    @gossip.destroy
    redirect_to root_path
end

private

def authenticate_user
unless current_user
      redirect_to new_session_path, danger: "Hmmmm, seems like you are not logged in 🤔"
    end
end
end
