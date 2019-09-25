class Viewer
  attr_accessor :username, :queue

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
    @queue = []
  end

  def self.all
    @@all
  end

  def add_movie_to_queue(movie)
    # Recieve movie instance as its only argument and adds it to queue
    @queue << movie
  end

  def rate_movie(movie, rating)
    # Pass in a movie and rating, assign the rating to the veiwers Q item for that movie
    # If the movie is not in the viewers Q, this method should add a new Q item with the viewer
    # movie and rating. if the movie is in the Q this method shoult not create a new Q item
    
    

  end
  
end
