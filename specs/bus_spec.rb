require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus")
require_relative('../person')

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(22, "Ocean Terminal")
    end

    def test_drive()
        assert_equal("Brum brum", @bus.drive())
    end

    def test_total_passengers()
        assert_equal(0, @bus.total_passengers())
    end

end