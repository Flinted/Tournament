require ('minitest/autorun')
require ('minitest/rg')
require_relative('../list')
require_relative('../knight')

class TestList< MiniTest::Test

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

      knights = [@knight1,@knight2]
      @list = List.new(knights)
    end

    def test_setup
      assert_equal(2, @list.knight_count)
    end

    def test_remove
      @list.remove(@knight1)
      assert_equal("Sir Reginald", @list.knights[0].name)
    end

end