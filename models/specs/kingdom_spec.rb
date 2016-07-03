require ('minitest/autorun')
require ('minitest/rg')
require_relative('../kingdom')

class TestKingdom < MiniTest::Test

    def setup
      @kingdom1= Kingdom.new({
        'name' => 'kingdom of scotland', 
        'flag' => 'www.google.co.uk',
        'arms' => 'www.amazon.co.uk'
        })
    end

    def test_setup
        assert_equal('Kingdom Of Scotland', @kingdom1.name)
    end

    
end