class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end
  # Class methods
  def self.all
    @@all
  end

  # Instance methods

  def queue_items
    QueueItem.all.select do |qi|
      qi.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |qi|
      qi.movie
    end
  end

  def add_movie_to_queue(movie)
    if queue_movies.include?(movie)
      p "This item is already in your queue"
    else
      QueueItem.new(self, movie)
    end
  end

  def rate_movie(movie, rating)
    # binding.pry
    if queue_movies.include?(movie)
      queue_items.find do |qi|
        qi.movie == movie
      end.rate(rating)
    else
      QueueItem.new(self, movie, rating)
    end
  end
  
end
