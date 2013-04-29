require 'test/unit'
require 'gramp'

class GrampTest < Test::Unit::TestCase

  def test_invalid_tracking_ids
    ['foo', 'UA-123-12', 'UA-1234'].each do |id|
      assert_equal Gramp::Client.valid_tracking_id?(id), false
    end
  end

  def test_valid_tracking_ids
    ['UA-1234-12', 'UA-1234567890-1234'].each do |id|
      assert_equal Gramp::Client.valid_tracking_id?(id), true
    end
  end

end
