require 'csv'


def winner_picker
  data = CSV.read("entries.csv")
  users = []

  data.each do |row|
    next if row[0] == 'user_name'

    entries_count = row[1].to_i
    user_name = row[0]
  
    entries_count.times do
      users << user_name
    end
  end

  users.shuffle!(random: Random.new(69))
  winner = users.sample
  
  puts "The winner is #{winner}"
end

winner_picker