class Bike

    attr_reader :working

    def initialize(working = true) 
        @working = working
    end

    def report_broken
        @working = false 
    end

end