class Bus
    attr_reader :route_number, :destination
    attr_accessor :passengers

    def initialize(route_number, destination)
        @route_number = route_number
        @destination = destination
        @passengers = []
    end

    def drive()
        return "Brum brum"
    end

    def total_passengers()
        return @passengers.length()
    end

    def pick_up(person)
        @passengers << person
    end

    def drop_off(person)
        @passengers.delete(person)
    end

    def empty()
        @passengers.clear
    end

    def pick_up_from_stop(stop)
        for person in stop.queue
            pick_up(person)
        end
        stop.clear_queue()
    end
end