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
    index2 = 0
  while index2 < directors_database.length
      index = 0
      director_name = directors_database[index2][:name]
      director_gross = 0
      while index < directors_database[index2][:movies].length
          director_gross += directors_database[index2][:movies][index][:worldwide_gross]
          index += 1
      end
      index2 += 1
    
      result[director_name] = director_gross
  end

  return result
end
