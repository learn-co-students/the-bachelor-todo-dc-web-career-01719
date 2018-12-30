
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    contestant_hash.each do |key, value|
      if value == "Winner"
        return contestant_hash["name"].split(' ')[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if value == occupation
          return contestant_hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter_hash = {}
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant_hash|
      if counter_hash[contestant_hash["hometown"]]
	      counter_hash[contestant_hash["hometown"]] += 1
      else
        counter_hash[contestant_hash["hometown"]] = 1
	    end
	  end
	end
	counter_hash[hometown]
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if value == hometown
          return contestant_hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages_array = []
  data[season].each do |contestant_hash|
    ages_array << contestant_hash["age"]
  end
  total = 0
  ages_array.each do |i|
    total += i.to_f
  end
  (total / ages_array.length).round
end
