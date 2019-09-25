class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select{|queue_item|queue_item.viewer == self}
  end

  def queue_movies
    queue_items.map{|queue_items| queue_items.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    
  end




  def self.all
    @@all
  end
  
end
