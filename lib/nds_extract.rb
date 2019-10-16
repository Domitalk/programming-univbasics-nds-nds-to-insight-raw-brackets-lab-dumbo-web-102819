$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # directors_database[0][:movies][0][:worldwide_gross]
  # directors_database[0] director [:movies][0] each movie [:worldwide_gross] add
  nds = directors_database
  index_1 = 0
  while index_1 < nds.count do
    current_name = nds[index_1][:name]
    puts current_name
    result << {current_name => 0}
    index_2 = 0
    while index_2 < nds[index_1][:movies].count do
      result[current_name] += nds[index_1][:movies][index_2][:worldwide_gross]
      index_2 += 1
    end
    index_1 += 1
  end
  nil
  result
end
