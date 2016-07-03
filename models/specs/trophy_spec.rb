require ('minitest/autorun')
require ('minitest/rg')
require_relative('../trophy')
require_relative('../event')

class TestTrophy < MiniTest::Test

    def setup
        @event1=Event.new({
          'name' => 'fast joust',
          'type' => 'jousting',
          'family'=>'mounted',
          'max' => 1,
          'img' => 'www.google.co.uk',
          'prize' => 500,
          'event_date' => '2016-03-30'
          })

      @trophy1= Trophy.new(@event1,1)
    end

    def test_setup
      assert_equal(500,@trophy1.prize)
      assert_equal('gold',@trophy1.type)
    end


end