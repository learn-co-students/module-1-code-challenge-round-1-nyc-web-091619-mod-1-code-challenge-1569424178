require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Seed data
## Viewers
v1 = Viewer.new("Jim")
v2 = Viewer.new("John")
v3 = Viewer.new("Jack")
v4 = Viewer.new("Tim")
v5 = Viewer.new("Tam")

## Movies
m1 = Movie.new("All is quiet")
m2 = Movie.new("LOUD")
m3 = Movie.new("Jack's back")
m4 = Movie.new("Snowpocalypse")
m5 = Movie.new("Drastic")

## Instantiating queue items through viewer
q1 = v1.add_movie_to_queue(m1)
q2 = v1.add_movie_to_queue(m2)
q3 = v1.add_movie_to_queue(m3)
q4 = v1.add_movie_to_queue(m4)
q5 = v2.add_movie_to_queue(m5)
q6 = v2.add_movie_to_queue(m4)
q7 = v2.add_movie_to_queue(m3)
q8 = v3.add_movie_to_queue(m1)
q9 = v3.add_movie_to_queue(m3)
q10 = v3.add_movie_to_queue(m5)
q11 = v4.add_movie_to_queue(m2)
q12 = v4.add_movie_to_queue(m3)
q13 = v5.add_movie_to_queue(m4)
q14 = v5.add_movie_to_queue(m5)
q15 = v5.add_movie_to_queue(m1)
q16 = v5.add_movie_to_queue(m2)

## Rating queue items through QueueItem#Rate and through Viewer#rate_movie
q1.rate(100)
q5.rate(87)
q3.rate(96)
v5.rate_movie(m3, 80)
v5.rate_movie(m2, 100)
v5.rate_movie(m1, 80)
q2.rate(40)
q13.rate(40)
q7.rate(40)
q4.rate(40)
q8.rate(37)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
