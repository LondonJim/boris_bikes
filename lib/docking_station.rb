class DockingStation

  attr_reader :bikes, :capacity

    def initialize(capacity = 20)
        @capacity = capacity 
        @bikes = []
    end

    def release_bike
        fail 'No bikes available' if empty?
        @bikes.pop
    end


    def dock(bike_to_be_docked)
        fail 'docking station is full' if full?
        @bikes << bike_to_be_docked
    end


    private
    
    def full?
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end

end
