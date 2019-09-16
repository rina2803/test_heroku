class AdminController < ApplicationController
  def index
  	@quarters = Quarter.all
  	@clubs = Club.all
  	@events = Event.all
  	@recrutements = Recrutement.all
  	@requests = Request.all
  end
end
