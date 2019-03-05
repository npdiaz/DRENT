class DronesController < ApplicationController
  def index         # GET /drones
    @drones = Drones.all
  end

  def show          # GET /drones/:id
    @drone = Drone.find(params[:id])
  end

  def new           # GET /drones/new
    @drone = Drone.new
  end

  def create        # POST /drones
    @drone = Drone.new(drone_params)
    @drone.save
    redirect_to drone_path(@drone)

  end

  def edit          # GET /drones/:id/edit
    @drone = Drone.find(params[:id])
  end

  def update        # PATCH /drones/:id
    @drone = Drone.find(params[:id])
    @drone.update(drone_params)

    redirect_to drone_path(@drone)
  end

  def destroy       # DELETE /drones/:id
    @drone = Drone.find(params[:id])
    @drone.destroy

      # no need for app/views/restaurants/destroy.html.erb
    redirect_to drone_path
  end

    private

    def drone_params
      # *Strong params*: You need to *whitelist* what can be updated by the user
      # Never trust user data!
      params.require(:drone).permit(:title, :address)
    end

end
