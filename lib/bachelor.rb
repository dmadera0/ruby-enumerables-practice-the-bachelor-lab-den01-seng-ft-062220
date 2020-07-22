require 'pry'

def data
  JSON.parse(File.read('../spec/fixtures/contestants.json')) 
end

def get_first_name_of_season_winner(data, season)
  # code here
  
  data[season].each do |contestant|
    contestant["status"] == "Winner"
    return contestant["name"].split.first
  end
end



def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |key|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
# code here 
counter = 0
data.each do |season, contestant|
  contestant.each do |index|
    if index["hometown"] == hometown
      counter +=1
    end
  end
end
counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |key|
    if key["hometown"] == hometown
      return key["occupation"]
    end
  end
end
end


def get_average_age_for_season(data, season)
  # code here
  count = 0
  age_count = 0
  data[season].each do |contestant|
    count += 1
    age_count += contestant["age"].to_f
  end
  return (age_count/count).round
end
