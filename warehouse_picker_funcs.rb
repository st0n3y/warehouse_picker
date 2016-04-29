WAREHOUSE = {

a: [ 
"rubber band",
"glow stick",
"model car",
"bookmark", 
"shovel",
"rubber duck",
"hanger",
"blouse",
"stop sign",
"needle" 
]

c: [ 
"rusty nail",
"drill press",
"chalk",
"word search",
"thermometer",
"face wash",
"paint brush",
"candy wrapper",
"shoe lace",
"leg warmers"
]

b: [
"tyre swing",
"sharpie",
"picture frame",
"photo album",
"nail filer",
"tooth paste",
"bath fizzers",
"tissue box",
"deodorant",
"cookie jar"
]

}

def item_in_bay(location)
  rack_bay = location.split( //, 2 )
  rack = rack_bay[0]
  bay = rack_bay[1]
  return WAREHOUSE[rack.to_sym][bay.to_i -1]
end


def bay_of_item()
  
end














