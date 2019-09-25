require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

v1 = Viewer.new("username1")
v2 = Viewer.new("username2")
v3 = Viewer.new("username3")

m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")

q1 = QueueItem.new(v1, m1, 10)
q2 = QueueItem.new(v2, m2, 5)
q3 = QueueItem.new(v3, m3, 4)
q4 = QueueItem.new(v1, m2, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
