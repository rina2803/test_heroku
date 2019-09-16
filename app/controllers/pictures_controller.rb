class PicturesController < ApplicationController
  
  def new
    @club = Club.find(params[:club_id])
  end

  def create
    @club = Club.find(params[:club_id])
    # @club.picture.attach(params[:picture])
    if params[:picture] != nil
      @club.picture.attach(params[:picture])
      redirect_to(club_path(@club))
    else
      flash[:warning] = "Veuillez insérer une image"
      redirect_to(club_path(@club.id))
    end
  end
  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
