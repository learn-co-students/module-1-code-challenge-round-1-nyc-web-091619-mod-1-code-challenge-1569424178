require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ashley = Viewer.new('ashley')
nate = Viewer.new('nate')
amy = Viewer.new('amy')
marc = Viewer.new('marc')

mean_girls = Movie.new('Mean Girls')
mindhunter = Movie.new('Mindhunter')
bridget_jones = Movie.new('Bridget Jones')

qi1 = QueueItem.new(ashley, mean_girls)
qi2 = QueueItem.new(nate, mindhunter)
qi3 = QueueItem.new(amy, bridget_jones)
qi4 = QueueItem.new(marc, mean_girls)
qi5 = QueueItem.new(ashley, mindhunter)
qi6 = QueueItem.new(amy, mindhunter)
qi7 = QueueItem.new(marc, bridget_jones)
qi8 = QueueItem.new(nate, bridget_jones)

ashley.rate_movie(mean_girls, 5)
ashley.rate_movie(mindhunter, 4)
ashley.rate_movie(bridget_jones, 3)
nate.rate_movie(mean_girls, 4)
nate.rate_movie(mindhunter, 5)
nate.rate_movie(bridget_jones, 2)
amy.rate_movie(mean_girls, 3)
amy.rate_movie(mindhunter, 2)
amy.rate_movie(bridget_jones, 5)
marc.rate_movie(mean_girls, 1)
marc.rate_movie(mindhunter, 4)
marc.rate_movie(bridget_jones, 1)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
