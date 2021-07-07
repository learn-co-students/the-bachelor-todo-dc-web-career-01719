require 'pry'

def get_first_name_of_season_winner(data, season)
    name = ""
  data.each do |season_num, contestants|
      if season_num == season
          contestants.each do |info|
              info.each do |attribute, value|
                  if value == "Winner" 
                      name = info["name"]
                  end
              end
          end
      end
  end
    name.split(" ").shift
end

def get_contestant_name(data, occupation)
    name = ""
    data.each do |season_num, contestants|
        contestants.each do |indiv|
            indiv.each do |attribute, val|
#                binding.pry
                if val == occupation
                    name = indiv["name"]
                end
            end
        end
    end
    name
end

def count_contestants_by_hometown(data, hometown)
    same_homey = 0
    data.each do |season, contestants|
        contestants.each do |indiv|
            indiv.each do |attirbute, val|
                if val == hometown
                    same_homey += 1
                end
            end
        end
    end
    same_homey
end

def get_occupation(data, hometown)
    occ = []
    data.each do |season, contestants|
         contestants.each do |indiv|
             indiv.each do |attribute, val|
                
                 if val == hometown
                     occ << indiv["occupation"]
                 end
             end
         end
    end
    occ.shift
end

def get_average_age_for_season(data, season)
    age = []
    data.each do |seas, contestants|
        if seas == season
            contestants.each do |indiv|
                age << indiv["age"].to_f
#                indiv.each do |attribute, val|
##                    if attribute == "age"
##                        age << val.to_i
##                    end
#                end
            end
        end
    end
    counter = 0
    total = 0
    age_length = age.length
    while counter < age_length
        total = total + age.pop
        counter += 1
    end
    avg = total/age_length
    avg.round(0.5)
end
