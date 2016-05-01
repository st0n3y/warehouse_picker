require( 'pry-byebug' )

WAREHOUSE = [
 
{ a10: "rubber band" },
{ a9: "glow stick" },
{ a8: "model car" },
{ a7: "bookmark" },
{ a6: "shovel" },
{ a5: "rubber duck" },
{ a4: "hanger" },
{ a3: "blouse" },
{ a2: "stop sign" },
{ a1: "needle" }, 

{ c1: "rusty nail" },
{ c2: "drill press" },
{ c3: "chalk" },
{ c4: "word search" },
{ c5: "thermometer" },
{ c6: "face wash" },
{ c7: "paint brush" },
{ c8: "candy wrapper" },
{ c9: "shoe lace" },
{ c10: "leg warmers" },

{ b1: "tyre swing" },
{ b2: "sharpie" },
{ b3: "picture frame" },
{ b4: "photo album" },
{ b5: "nail filer" },
{ b6: "tooth paste" },
{ b7: "bath fizzers" },
{ b8: "tissue box" },
{ b9: "deodorant" },
{ b10: "cookie jar" }

]


def item_in_bay(location)
  for stock in WAREHOUSE
    if stock.key?(location.to_sym)
      return stock[location.to_sym]
    end
  end
end


def bay_of_item(item)
  for stock in WAREHOUSE
    if stock.has_value?(item)
      return stock.key(item).to_s
    end
  end
end


def list_of_items( locations )
  item_list = []
  for location in locations
    item_list.push(item_in_bay(location.to_sym))
  end
  return item_list
end


def list_of_bays( items )
  bay_list = []
  for item in items
    bay_list.push(bay_of_item(item.to_s))
  end
  return bay_list
end


def item_list_bay_distance( locations )
  bay_indices = []
  for location in locations
    location_sym = location.to_sym
    for pair in WAREHOUSE
      if pair.has_key?(location_sym)
        bay_indices << WAREHOUSE.index(pair)
        max = bay_indices.max
        min = bay_indices.min
        distance = max - min
      end
    end
  end
  return list_of_items( locations ),  distance
end