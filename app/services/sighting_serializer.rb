class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end

    def to_serialized_json
        @sighting.to_json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])

        #   An alternate way to write the method to_serialized_json that is much clearer what is happening w/o changing the functionality

        #   options= {
        #       include:{
        #           bird: {
        #               only: [:name, :species]
        #           },
        #           location: {
        #               only:[:latitude, :longitude]
        #           }
        #       },
        #       except: [:updated_at],
        #   }
        #   @sighting.to_json(options)
    end
end