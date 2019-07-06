class MembersController < ApplicationController
  
  def index
    @members = Member.all
end
  
  def new
    @member = Member.new
  end

  def create
    Member.create(place_params)
    redirect_to root_path
  end

private
  
  def member_params
    params.require(:member).permit(:name, :rank, :year)
  end
end