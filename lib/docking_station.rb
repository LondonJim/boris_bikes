class DockingStation

  attr_reader :bikes, :capacity

    def initialize(capacity = 20)
        @capacity = capacity 
        @bikes = []
        @broken_bikes = []
    end

    def release_bike
        fail 'No bikes available' if @bikes.empty? && @broken_bikes.empty?
        fail 'No working bikes available' if @bikes.empty?
        @bikes.pop
    end

    def dock(bike)
        fail 'docking station is full' if full?
        bike.working ? @bikes.push(bike) : @broken_bikes.push(bike)
    end

    private    
    def full?
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end

end
