class DockingStation 

    def initialize
        @bikes = []
    end

    def release_bike
        raise 'No bikes available' if @bikes.empty?
        @bikes.pop
    end


    def dock(bike_to_be_docked)
        raise 'docking station is full' if @bikes.count >= 20
        @bikes << bike_to_be_docked
    end


    attr_reader :bikes

end