def get_first_name_of_season_winner(data, season)
  data[season].each do |placeholder|
    return placeholder["name"].split[0] if placeholder.has_value?("Winner")
end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
     contestants.each do |element_of_array|
       if element_of_array.has_value?(occupation)
         return element_of_array["name"]
       end
     end
   end
 end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |element_of_array|
      count += 1 if element_of_array.has_value?(hometown)
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
     contestants.each do |element_of_array|
       if element_of_array.has_value?(hometown)
         return element_of_array["occupation"]
       end
     end
   end
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_contestants = 0
  data[season].each do |placeholder|
    total_contestants += 1
    total_age += placeholder["age"].to_f
end
return (total_age/total_contestants).round
end
