require File.dirname(__FILE__) + '/test_helper.rb'

class TestFaker < Test::Unit::TestCase

  def setup
  end
  
  def test_numerify
    assert Faker::Base.numerify('###').match(/\d{3}/)
  end
  
  def test_numerify_positive
    assert Faker::Base.numerify('$#$').match(/\d{3}/)
  end
end
