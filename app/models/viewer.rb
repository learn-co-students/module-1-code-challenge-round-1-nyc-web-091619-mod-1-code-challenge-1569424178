class Viewer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_queue_movies
    Movie.all select do |viewer|
      movie.viewer == self
    end
  end

  def my_queue_items
    Movie.all select do |viewer|
      movie.Viewer
    end

  end

  def queue_movies
    my_queue_movies.map do |movie|
      queue_movies.movie
    end

  end

 

  def self.add_movie_to_queue(add_movie)
    all.find do |viewer|
      add_movie == viewer.queue_movies
    end
  
  end

  
  end

  def rate_movie(movie, rating)
    #use the find method from my queue item  for the movie
    # if it isn;t there use the add movie
    # rate it according to 1-5
    
  end
  
end # end of class



​