require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


v1 = Viewer.new("Chett")
v2 = Viewer.new("Vera")
v3 = Viewer.new("Steven")
v4 = Viewer.new("Jeff")

m1 = Movie.new("Fast and Furious: Tokyo Drift")
m2 = Movie.new("Gone in 60 Seconds")
m3 = Movie.new("Avengers: Endgame")
m4 = Movie.new("Rush Hour II")

q1 = QueueItem.new(v1,m1,3)
q2 = QueueItem.new(v2,m3,4)
q3 = QueueItem.new(v3,m2,5)
q4 = QueueItem.new(v1,m4,5)
q5 = QueueItem.new(v2,m1,2)
q6 = QueueItem.new(v3,m4,5)
q7 = QueueItem.new(v4,m2,3)
q8 = QueueItem.new(v4,m4,5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
