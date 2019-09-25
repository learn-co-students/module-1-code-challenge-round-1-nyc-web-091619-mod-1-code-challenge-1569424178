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

  def queue_items
    QueueItem.all.select {|item| item.viewer == self}
  end 

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    # find the movie in the viewer's movie queue
    movie = queue_items.find {|item| item.movie == movie}

    # if movie isn't in the viewer's q, add it
    if movie == nil 
      QueueItem.new(self, movie, rating)
    elsif
      movie.rating = rating 
    end
    # return movie instance with new
    movie
  end
  
end
