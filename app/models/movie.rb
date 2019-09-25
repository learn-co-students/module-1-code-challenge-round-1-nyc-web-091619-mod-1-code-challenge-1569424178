class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select{|queue_items|queue_items.movie == self}
  end

  def viewers
    queue_items.map{|queue_items|queue_items.viewer}
  end

  def my_movie
    QueueItem.all.select{|queue_items|queue_items.movie == self}
  end

  def average_rating
    my_movie.map{|queue_items|queue_items.rating}.reject{|n|n == nil}.inject{|sum, n| sum + n}/viewers.count
  end

  def Movie.highest_rated
    #iterate the movies
    #create a hash to count
    #sort the hash (#sort_by)
  end


  def self.all
    @@all
  end

end
