require ('minitest/autorun')
require ('minitest/rg')
require('pry-byebug')
require_relative('../trophy')
require_relative('../knight')
require_relative('../event')
require_relative('../kingdom')
require_relative('../ranking')

class TestRanking< MiniTest::Test

  def setup
    @kingdom1= Kingdom.new({
      'name' => 'kingdom of scotland', 
      'flag' => 'www.google.co.uk',
      'arms' => 'www.amazon.co.uk'
      })

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

    @trophy1= Trophy.new(@event1,1,'gold')
    @trophy2= Trophy.new(@event1,2,'silver')
    @trophy3= Trophy.new(@event1,3,'bronze')
    @trophy4= Trophy.new(@event1,4,'tin')
    @trophy5= Trophy.new(@event1,5,'tin')

    @knight1.add_trophy(@trophy1)
    @knight1.add_trophy(@trophy2)
    @knight2.add_trophy(@trophy3)
    @knight1.add_trophy(@trophy4)
    @knight1.add_trophy(@trophy5)
    @ranking= Ranking.new({'knights' => [@knight1,@knight2], 'kingdoms' => [@kingdom1],'events' => [@event1]})
  end

  def test_get_gold()
    golds = @ranking.get_type_trophies('gold')
    assert_equal(1,golds.size)
  end

  def test_get_tin()
    tins =  @ranking.get_type_trophies('tin')
    assert_equal(2,tins.size)
  end

  def test_return_all_trophies()
    trophies = @ranking.get_all_trophies()
    result = trophies['gold'].size
    assert_equal(1, result)
  end

  def test_knight_points()
    assert_equal(8,@knight1.get_knights_points)
  end

end