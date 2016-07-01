require ('minitest/autorun')
require ('minitest/rg')
require_relative('../horse')

class TestHorse < MiniTest::Test

    def setup
      @horse1= Horse.new({'name'=>'Horsey Mchorseface', 'img' => 'www.google.co.uk', 'knight_id' => 2})
    end

    def test_setup
      assert_equal('Horsey Mchorseface', @horse1.name)
      assert_equal(2, @horse1.knight_id)
    end

end