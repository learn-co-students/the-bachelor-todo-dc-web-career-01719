def get_first_name_of_season_winner(data, season)
  data.each { |seasons, seasons_data|
    if season == seasons
      i = 0
      while i < seasons_data.size
        if seasons_data[i]["status"] == "Winner"
          return seasons_data[i]["name"].split(" ")[0]
        end
        i += 1
      end
    end
  }
end

def get_contestant_name(data, occupation)
  data.each { |season, season_data|
    i = 0
    while i < season_data.length
      if season_data[i]["occupation"] == occupation
        return season_data[i]["name"]
      end
    i += 1
    end
  }
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each { |season, season_data|
    i = 0
    while i < season_data.length
      if season_data[i]["hometown"] == hometown
        count += 1
      end
      i += 1
    end
  }
  count
end

def get_occupation(data, hometown)
  data.each { |season, season_data|
    i = 0
    while i < season_data.length
      if season_data[i]["hometown"] == hometown
        return season_data[i]["occupation"]
      end
      i += 1
    end
  }
end

def get_average_age_for_season(data, season)
  data.each { |seasons, seasons_data|
    if season == seasons
      i = 0
      total_age = 0
      while i < seasons_data.size
        if total_age == 0
        total_age = seasons_data[i]["age"].to_i
        else
        total_age = total_age + seasons_data[i]["age"].to_i
        end
        i += 1
      end
      return (total_age.to_f / seasons_data.length).round
    end
  }
end
