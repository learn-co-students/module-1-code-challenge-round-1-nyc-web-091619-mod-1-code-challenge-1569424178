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
    QueueItem.all.select {|queue_item| queue_item.viewer == self}
  end

  def queue_movies
    queue_items.map {|queue_item| queue_item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if self.queue_movies.include? movie
      queue_items.each do |queue_item|
        if queue_item.movie == movie
          queue_item.rating = rating
        end
      end
    else
      QueueItem.new(self, movie, rating)
    end
  end
  
end
