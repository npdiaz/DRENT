class DronesController < ApplicationController
  def index         # GET /drones
    @drones = Drone.all
  end

  def show          # GET /drones/:id
    @drone = Drone.find(params[:id])
    @booking = @drone.bookings.new
  end

  def new           # GET /drones/new
    @drone = Drone.new
    @drone.photos.build
  end

  def create        # POST /drones
    @drone = Drone.new(drone_params)
    @drone.user = current_user
    if @drone.save
      redirect_to drone_path(@drone), notice: 'Drone created'
    else
      render :new
    end
  end

  def edit          # GET /drones/:id/edit
    @drone = Drone.find(params[:id])
  end

  def update        # PATCH /drones/:id
    @drone = Drone.find(params[:id])
    if @drone.update(drone_params)
      redirect_to drone_path(@drone), notice: 'Drone updated'
    else
      render :edit
    end
  end

  def destroy       # DELETE /drones/:id
    @drone = Drone.find(params[:id])
    @drone.destroy

      # no need for app/views/restaurants/destroy.html.erb
    redirect_to root_path
  end

    private

    def drone_params
      # *Strong params*: You need to *whitelist* what can be updated by the user
      # Never trust user data!
      params.require(:drone).permit(:title, :description, :brand, :model, :size, :weight, :endurance, :address, :city, :country, :price, photos_attributes: [:photo])
    end

end
