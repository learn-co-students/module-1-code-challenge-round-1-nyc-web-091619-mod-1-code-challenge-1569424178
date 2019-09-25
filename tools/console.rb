require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


v1 = Viewer.new("ccmeth")
v2 = Viewer.new("jvsilv")
v3 = Viewer.new("gl247")
v4 = Viewer.new("ccat15")

m1 = Movie.new("Batman")
m2 = Movie.new("Superman")
m3 = Movie.new("Wonder Woman")
m4 = Movie.new("Aquaman")

q1 = QueueItem.new(m3, v1, 5)
q2 = QueueItem.new(m1, v1, 8)
q3 = QueueItem.new(m2, v2, 2)
q4 = QueueItem.new(m4, v3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
