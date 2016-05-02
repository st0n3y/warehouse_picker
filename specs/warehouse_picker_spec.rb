require 'minitest/autorun'
require 'minitest/rg'
require_relative '../warehouse_picker_funcs.rb'

class TestWarehouse < Minitest::Test


  def test_item_in_bay()
    item = item_in_bay('b5')
    assert_equal('nail filer', item)
  end

  def test_bay_of_item()
    bay = bay_of_item( 'nail filer' )
    assert_equal( 'b5', bay )
  end

  def test_list_of_items()
    items = list_of_items( [ "b5", "b10", "b6" ] )
    assert_equal( [ "nail filer", "cookie jar", "tooth paste" ], items )
  end

  def test_list_of_bays()
    bays = list_of_bays( [ "rusty nail", "shoe lace", "leg warmers" ] )
    assert_equal( [ "c1", "c9", "c10" ], bays )
  end

  def test_item_list_bay_distance()
    items = item_list_bay_distance( [ "b3", "c7", "c9", "a3" ] )
    distance = item_list_bay_distance( [ "b3", "c7", "c9", "a3" ] )
    assert_equal( [ "picture frame", "paint brush", "shoe lace", "blouse" ], items[0] )
    assert_equal( 15, distance[1] )
  end

  def test_bay_id_and_order
    bays = bay_id_and_order( [ "hanger", "deodorant", "candy wrapper", "rubber band" ] )
    assert_equal( [ "a10", "a4", "c8", "b9" ], bays )
  end

end