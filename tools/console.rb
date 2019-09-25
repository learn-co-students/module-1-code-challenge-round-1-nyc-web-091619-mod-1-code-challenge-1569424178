require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Handy Smurf")
v2 = Viewer.new("Jokey Smurf")
v3 = Viewer.new("Smurfette")
v4 = Viewer.new("Papa Smurf")

m1 = Movie.new("Alita: Battle Angel")
m2 = Movie.new("Synechdoche")
m3 = Movie.new("Departures")
m4 = Movie.new("The Secret Life of Walter Mitty")

q1 = QueueItem.new(v1, m1, 4)
q2 = QueueItem.new(v2, m2, 3)
q3 = QueueItem.new(v3, m1, 5)
q4 = QueueItem.new(v4, m4, 4)
q5 = QueueItem.new(v4, m2, 5)
q6 = QueueItem.new(v4, m1, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
