require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Ben")
v2 = Viewer.new("Tad")
v3 = Viewer.new("Pen")

m1 = Movie.new("Mission")
m2 = Movie.new("Impossible")
m3 = Movie.new("T-shirt")

q1 = Queue.new(v1, m1, 3)
q2 = Queue.new(v2, m2, 4)
q3 = Queue.new(v3, m2, 5)

binding.pry


0 #leave this here to ensure binding.pry isn't the last line
