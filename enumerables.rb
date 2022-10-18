require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  names_array = spicy_foods.map do |obj|
    obj[:name]
  end
 names_array
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  food_heat = spicy_foods.filter do |food|
    food[:heat_level] >= 5
  end
  food_heat 
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  emoji = spicy_foods.map do |food|
    food_name = food[:name]
    food_category = food[:cuisine]
    food_heat= food[:heat_level]
    "#{food_name} (#{food_category}) | Heat Level: #{'🌶' * food_heat}"
  end
  puts emoji
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  lets_find = spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
  lets_find
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  lets_sort = spicy_foods.sort do|food1, food2|
   food1[:heat_level] <=> food2[:heat_level]
  end
lets_sort
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  hot_foods = spicy_foods.filter do |food|
    food[:heat_level] > 5
  end
   hottest_food = hot_foods.map do |food|
    food_name = food[:name]
    food_category = food[:cuisine]
    food_heat= food[:heat_level]
    "#{food_name} (#{food_category}) | Heat Level: #{'🌶' * food_heat}"
   end
   puts hottest_food
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  avg_array = []
  spicy_foods.each do |food|
    avg_array << food[:heat_level]
  end 
the_sum = avg_array.sum 
finally = the_sum/3
finally
end
