class  PhotosController < ApplicationController
  # def show          # GET /photo/:id
  #   @photo = Photo.find(params[:id])
  # end

  def new           # GET /photo/new
    @drone = Drone.find(params[:drone_id])
    @photo = Photo.new
  end

  def create        # POST /photo
    @drone = Drone.find(params[:drone_id])
    @photo = Photo.new(photo_params)
    @photo.drone = @drone
    @photo.save
    redirect_to drone_path(@drone)
  end

private

  def photo_params
    params.require(:photo).permit(:photo, :photo_cache)
  end
end
