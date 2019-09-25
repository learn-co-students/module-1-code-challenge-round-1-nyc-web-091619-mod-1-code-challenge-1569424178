require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


v1 = Viewer.new("Jim")
v2 = Viewer.new("Yvonne")
v3 = Viewer.new("Joe")
v4 = Viewer.new("Diego")

m1 = Movie.new("Interstellar")
m2 = Movie.new("Arrival")
m3 = Movie.new("Contact")
m4 = Movie.new("Sunshine")

q1 = QueueItem.new(v1,m1,10)
q2 = QueueItem.new(v1,m2,4)
q3 = QueueItem.new(v2,m3,5)
q4 = QueueItem.new(v2,m4,3)
q5 = QueueItem.new(v3,m1,4)
q6 = QueueItem.new(v4,m2,2)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
