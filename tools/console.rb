require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("liamhealy")
v2 = Viewer.new("evans")
v3 = Viewer.new("chett")
v4 = Viewer.new("vera")
v5 = Viewer.new("steven")

m1 = Movie.new("John Wick")
m2 = Movie.new("Movie 2")
m3 = Movie.new("Movie 3")
m4 = Movie.new("Movie 4")

q1 = QueueItem.new(v1, m1, 3)
q2 = QueueItem.new(v2, m2)
q3 = QueueItem.new(v3, m3, 5)
q4 = QueueItem.new(v1, m2)
q5 = QueueItem.new(v5, m1, 5)
q6 = QueueItem.new(v2, m4)
q7 = QueueItem.new(v1, m3, 5)
q8 = QueueItem.new(v3, m2, 3)
q9 = QueueItem.new(v4, m1, 4)
q0 = QueueItem.new(v5, m2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
