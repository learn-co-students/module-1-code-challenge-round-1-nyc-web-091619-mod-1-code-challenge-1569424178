require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Viewer
v1 = Viewer.new("viewer1")
v2 = Viewer.new("viewer2")
v3 = Viewer.new("viewer3")

#movie
m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")

#queue
q_i1 = QueueItem.new(v1, m1, 5)
q_i2 = QueueItem.new(v2, m2, 4)
q_i3 = QueueItem.new(v3, m3, 5)

#viewer methods
v1.queue_items
v1.queue_movies
v1.add_movie_to_queue("spiderman")
v1.add_movie_to_queue(m2)

#Movie methods
m1.queue_items
m2.viewers
m2.my_movie
p m2.average_rating

#binding.pry
0 #leave this here to ensure binding.pry isn't the last line
