require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus")
require_relative('../person')

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(22, "Ocean Terminal")

        @passenger1 = Person.new("Rebeka", 25)
        @passenger2 = Person.new("James", 26)

   
        
    end

    def test_drive()
        assert_equal("Brum brum", @bus.drive())
    end

    def test_total_passengers()
        assert_equal(0, @bus.total_passengers())
    end

    def test_pick_up()
        @bus.pick_up(@passenger1)
        assert_equal(1, @bus.total_passengers())
    end

    def test_drop_off()
        @bus.pick_up(@passenger1)
        @bus.pick_up(@passenger2)
        @bus.drop_off(@passenger1)
        assert_equal(1, @bus.total_passengers())
    end

    def test_empty()
        @bus.pick_up(@passenger1)
        @bus.pick_up(@passenger2)
        @bus.empty
        assert_equal(0, @bus.total_passengers())
    end

end