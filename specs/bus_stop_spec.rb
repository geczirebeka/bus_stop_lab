require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus_stop")
require_relative('../person')

class BusStopTest < MiniTest::Test
    def setup()
        @stop = BusStop.new("Donald Street")
        @passenger1 = Person.new("Hugo", 45)
        @passenger2 = Person.new("Frank", 29)
    end

    def test_queue_length_starts_empty()
        assert_equal(0, @stop.queue_length())
    end

    def test_add_person_to_queue()
        @stop.add_person_to_queue(@passenger1)
        assert_equal(1, @stop.queue_length())
    end

    def test_clear_queue()
        assert_equal(0, @stop.queue_length)
    end
end