class Bike

    attr_reader :working

    def initialize(working = true) 
        @working = working
    end

    # def working? # this failed initially, because the method wasn't returning TRUE by default, which I found surprising
    #    @working
    # end

    def report_broken
        @working = false 
    end

end