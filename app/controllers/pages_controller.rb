class PagesController < ApplicationController
  def home
    @drones = Drone.all
  end
end
