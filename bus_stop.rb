class BusStop
    attr_reader :name
    attr_accessor :queue

    def initialize(name)
        @name = name
        @queue = []
    end

    def add_person_to_queue(person)
        @queue << person
    end

    def queue_length()
        return @queue.length
    end

    def clear_queue()
        @queue.clear()
    end
end