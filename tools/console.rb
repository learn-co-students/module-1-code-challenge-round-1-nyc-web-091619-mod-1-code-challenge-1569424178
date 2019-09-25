require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


v1 = Viewer.new("ericabasak")
v2 = Viewer.new("adelynava")
v3 = Viewer.new("shaan")

m1 = Movie.new("Beauty and the Beast")
m2 = Movie.new("Cinderella")
m3 = Movie.new("Aladdin")

qi1 = QueueItem.new(m2, v1, 3.5)
qi2 = QueueItem.new(m1, v3, 5.0)
qi3 = QueueItem.new(m3, m3, 4.0)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
