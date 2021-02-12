class SpotsVttsController < ApplicationController
  def index
    @spots_vtts = SpotsVtt.all
    @markers = @spots_vtts.map do |spots_vtt|
      {
        lat: spots_vtt.latitude,
        lng: spots_vtt.longitude
      }
    end
  end

  def show
    @spots_vtt = SpotsVtt.find(params[:id])
  end
end
