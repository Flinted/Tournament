require ('minitest/autorun')
require ('minitest/rg')
require_relative('../trophy')

class TestTrophy < MiniTest::Test

    def setup
      @trophy1= Trophy.new({
        'type'=> "gold",
        'event' => "jousting",
        'event_id' => 2,
        'family' => "mounted",
        'event_img' => 'www.google.co.uk',
        'prize' => 500
        })
    end

    def test_setup
      assert_equal(2,@trophy1.event_id)
    end


end