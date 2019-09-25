require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("user1")
v2 = Viewer.new("user2")
v3 = Viewer.new("user3")

m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")
m4 = Movie.new("movie4")

q1 = QueueItem.new(v1, m1, 4)
q2 = QueueItem.new(v2, m2, 2)
q3 = QueueItem.new(v3, m3, 3)
q4 = QueueItem.new(v1, m2, 5)
q5 = QueueItem.new(v3, m2, 3)

Viewer.all 
Movie.all
QueueItem.all

binding.pry

q6 = v1.rate_movie(m3, 5)
puts q6
puts v1.rate_movie(m1, 3)
puts m3.viewers


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
