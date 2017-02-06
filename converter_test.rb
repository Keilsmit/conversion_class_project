require 'minitest/autorun'
require './converter'

class TestConverter < MiniTest::Test


  def test_f_to_c
    # assert_equal !nil, @new_number.total
    assert_equal 0, Converter.new(32).f_to_c
  end

  def test_c_to_f
    assert_equal 53.6, Converter.new(12.0).c_to_f
  end

  def test_quarts_to_cups
    # Four cups in a quart
    # So, 2 quarts == 8 cups
    assert_equal 8, Converter.new(2).quarts_to_cups
  end

  def test_cups_to_quarts
    assert_equal 3, Converter.new(12).cups_to_quarts
  end

  def test_inches_to_feet
    assert_equal 1, Converter.new(12).inches_to_feet
  end

  def test_feet_to_inches
    assert_equal 144, Converter.new(12).feet_to_inches
  end

  def test_seconds_to_milliseconds
    # 1000 milliseconds per second
    assert_equal 1000, Converter.new(1).seconds_to_milliseconds
  end

  def test_milliseconds_to_seconds
    assert_equal 1, Converter.new(1000).milliseconds_to_seconds
  end

  def test_feet_to_miles
    # A mile is 5280 feet
    # So, 13200 feet == 2.5 miles
    assert_equal 2.5, Converter.new(13200.0).feet_to_miles
  end

  def test_miles_to_feet
    assert_equal 5280, Converter.new(1).miles_to_feet
  end

  def test_feet_to_meters
    # A meter is 3.28084 feet
    # So, A mile == 1609.344 meters (when rounded to three decimals)
    assert_equal 30.48, Converter.new(100).feet_to_meters
  end

  def test_meters_to_feet
    assert_equal 65.617, Converter.new(20).meters_to_feet
  end

  def test_ounce_to_gram
    # One ounce == 28.3495 grams
    assert_equal 28.3495, Converter.new(1).ounce_to_gram
  end

  def test_gram_to_ounce
    assert_equal 1, Converter.new(28.3495).gram_to_ounce
  end

end
