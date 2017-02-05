require 'minitest/autorun'

class TestConverter < MiniTest::Test


  def test_f_to_c
    # assert_equal !nil, @new_number.total
    assert(Converter.new(32).f_to_c == 0)
  end







end
