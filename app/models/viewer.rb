class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  

  #this method should receive a Movie instance
  #as its only argument and add it to the Viewer's queue

  #go through all movies
  #find viewers queue
  def add_movie_to_queue(movie)
    Movie.all do |movie|
    movie.queue_item
    end
  end


  #
  def rate_movie(movie, rating)

  end


end #end of Viewer class
