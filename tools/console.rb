require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("agent007")
viewer2 = Viewer.new("fastandfuriosLOVER")
viewer3 = Viewer.new("user_undefined")
viewer4 = Viewer.new("MoviesAddict")
viewer5 = Viewer.new("John_Hopkins")


movie1 = Movie.new("The Mule")
movie2 = Movie.new("Spider-Man: Into the Spider-Verse")
movie3 = Movie.new("Mission: Impossible -- Fallout")
movie4 = Movie.new("Leave No Trace")
movie5 = Movie.new("You Were Never Really Here")
movie6 = Movie.new("If Beale Street Could Talk")
movie7 = Movie.new("The Rider")
movie8 = Movie.new("First Reformed")

qi1 = QueueItem.new(viewer1, movie1, 5)
qi2 = QueueItem.new(viewer1, movie2, 1)
qi3 = QueueItem.new(viewer1, movie3, 2)
qi4 = QueueItem.new(viewer2, movie1, 3)
qi5 = QueueItem.new(viewer2, movie5, 2)
qi6 = QueueItem.new(viewer3, movie1, 4)
qi7 = QueueItem.new(viewer3, movie5, 4)
qi8 = QueueItem.new(viewer3, movie6, 5)
qi9 = QueueItem.new(viewer3, movie8, 3)
qi10 = QueueItem.new(viewer4, movie1, 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
