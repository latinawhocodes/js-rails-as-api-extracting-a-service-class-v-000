class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: SightingSerializer.new(sightings).to_serialized_json
    end

    def show
        sighting = sighting.find_by(id: params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end