
def the_finder(data_structure, return_this_key, if_this_key, is)
  return_array = []
  data_structure.each do |season, season_array|
    season_array.each do |person|
      return_array << person[return_this_key] if is === person[if_this_key]
    end
  end
  return_array
end

def get_first_name_of_season_winner(data, season)
  season_data = {}
  season_data[season] = data[season]
  the_finder(season_data, "name", "status", "Winner").join.split.first
end

def get_contestant_name(data, occupation)
  the_finder(data, "name", "occupation", occupation).first
end

def count_contestants_by_hometown(data, hometown)
  the_finder(data, "name", "hometown", hometown).length
end

def get_occupation(data, hometown)
  the_finder(data, "occupation", "hometown", hometown).first
end

def get_average_age_for_season(data, season)
  season_data = {}
  season_data[season] = data[season]
  age_array = the_finder(season_data, "age", "name", String).collect(&:to_f)
  (age_array.inject(0){|sum, elem| sum + elem} / age_array.length).round
end
