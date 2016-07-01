require ('minitest/autorun')
require ('minitest/rg')
require_relative('../knight')
require_relative('../trophy')
require_relative('../horse')

class TestKnight < MiniTest::Test

    def setup
        @horse1= Horse.new({
          'name'=>'Horsey Mchorseface', 
          'img' => 'www.google.co.uk', 
          'knight_id' => 2})

        @trophy1= Trophy.new({
          'type'=> "gold",
          'event' => "jousting",
          'event_id' => 2,
          'family' => "mounted",
          'event_img' => 'www.google.co.uk',
          'prize' => 500})

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
    end

    def test_setup
      assert_equal('Sir Perceval', @knight1.name)
      assert_equal(500, @knight1.wealth)
    end

    def test_add_wealth
      @knight1.add_wealth(500)
      assert_equal(1000,@knight1.wealth)
    end

    def test_add_trophy
      @knight1.add_trophy(@trophy1)
      assert_equal(1,@knight1.trophy_count())
    end

    def test_add_horse
      @knight1.add_horse(@horse1)
      assert_equal(@horse1,@knight1.horse)
    end

    def test_remove_horse
      @knight2.remove_horse()
      assert_equal(nil, @knight2.horse)
    end
end