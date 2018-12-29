require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each {|seasons, contestants|
  contestants.each {|info|
 
  if info["status"] == "Winner"
    if seasons == season
    return info["name"].split.first
  end
end
  }
  }
end

def get_contestant_name(data, occupation)
  data.each {|seasons, contestants|
  contestants.each {|info|
  if info["occupation"] == occupation
    return info["name"]
  end
  }
  }
end

def count_contestants_by_hometown(data, hometown)
 counter = 0
 data.each {|seasons, contestants|
 contestants.each {|info|
 if hometown == info["hometown"]
   counter +=1
 end
 }
 }
 counter
end

def get_occupation(data, hometown)
  data.each {|seasons, contestants|
  contestants.each {|info|
  if hometown == info["hometown"]
     return info["occupation"]
  end
  }
  }
  
end

def get_average_age_for_season(data, season)
  total_age = 0
  count = 0
  data.each {|seasons, contestants|
  contestants.each {|info|
  if season == seasons
  total_age += info["age"].to_f
  count += 1 
end
  }
  }
  average_age = (total_age/count).round
end
