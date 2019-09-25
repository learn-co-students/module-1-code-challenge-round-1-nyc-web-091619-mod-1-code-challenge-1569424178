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
    QueueItem.all.select{|queue_item| queue_item.viewer == self}
  end

  def queue_movies
    queue_items.map{|queue_item| queue_item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    moviez = QueueItem.all.find{|queue_item| queue_item.viewer == self and queue_item.movie == movie}
    if moviez
      puts 'here'
      moviez.rating = rating
    else
      QueueItem.new(self, movie, rating)
    end
  end
  
end
