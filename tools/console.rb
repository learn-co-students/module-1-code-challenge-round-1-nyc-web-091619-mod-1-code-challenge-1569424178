require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("John Wick")
m2 = Movie.new("Road House")
m3 = Movie.new("First Blood")

v1 = Viewer.new("Movie Buff")
v2 = Viewer.new("Movie Fan")
v3 = Viewer.new("Movie Aficionado")

q1 = Queue.new("Viewer A", "First Blood", 5)
q2 = Queue.new("Viewer B", "John Wick", 5)
q3 = Queue.new("Viewer C", "Road House", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
