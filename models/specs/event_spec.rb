require ('minitest/autorun')
require ('minitest/rg')
require_relative('../event')
require_relative('../knight')

class TestEvent < MiniTest::Test

    def setup
      @knight1= Knight.new({
        'name' => 'Sir Perceval', 
        'nation_id' => 2,
        'img' => 'www.google.co.uk', 
        'wealth' => 500})

      @knight2= Knight.new({
        'name' => 'Sir Reginald', 
        'nation_id' => 2,
        'horse' => @horse1,
        'img' => 'www.google.co.uk', 
        'wealth' => 500})

      @event1=Event.new({
        'name' => 'fast joust',
        'type' => 'jousting',
        'family'=>'mounted',
        'max' => 1,
        'img' => 'www.google.co.uk',
        'prize' => 500,
        'event_date' => '2016-03-30'
        })

      @event2=Event.new({
        'name' => 'fast joust',
        'type' => 'jousting',
        'family'=>'mounted',
        'max' => 3,
        'img' => 'www.google.co.uk',
        'prize' => 500,
        'event_date' => '2016-03-30'
        })
    end

    def test_setup
      assert_equal('fast joust', @event1.name)
    end

    def test_add_knight
      @event1.add_knight(@knight1)
      assert_equal(1,@event1.competitor_count)
    end

    def test_event_full
      @event1.add_knight(@knight1)
      @event1.add_knight(@knight2)
      assert_equal(1,@event1.competitor_count)
      assert_equal("Event Full", @event1.add_knight(@knight2))
    end

    def test_knight_track
        @event2.tracker(13)
        assert_equal("-13", @event2.track)
    end

    def test_event_populate
      @event2.tracker(1)
      @event2.tracker(2)
      @event2.populate
      assert_equal(2, @event2.competitor_count)
    end
end