class DockingStation 
    

    # def release_bike
    #     if @bikes == nil
    #         raise
    #     else
    #         @bikes
    #     end
    # end

    def release_bike
        fail 'No bikes available' unless @bikes
        @bikes
    end


    def dock(bike_to_be_docked)
        @bikes = bike_to_be_docked
    end


    attr_reader :bikes

end