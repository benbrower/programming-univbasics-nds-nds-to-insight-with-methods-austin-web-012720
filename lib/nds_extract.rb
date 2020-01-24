$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # director_data is director name hash
  # p director_data => {:movies=>[{:release_year=>1975, :studio=>"Universal", :title=>"Jaws", :worldwide_gross=>260000000}, ...studio=>"Buena Vista", :title=>"Lincoln", :worldwide_gross=>182207973}], :name=>"Stephen Spielberg"}

  gross_total = 0
  title_index = 0

  while title_index < director_data[:movies].size
    gross_total += director_data[:movies][title_index][:worldwide_gross]
    title_index += 1
  end

  gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
# def directors_totals(nds)
#   result = {}
#   nil
# end
