class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end
  # Class methods
  def self.all
    @@all
  end

  def self.highest_rated
    movies_hash = {}
    all.each do |movie|
      movies_hash[movie] = movie.average_rating
    end
    movies_hash.max_by{|movie, avg_rtg| avg_rtg}[0] # 0 to return the instance instead of [k,v]
  end

  # Instance methods

  def queue_items
    QueueItem.all.select do |qi|
      qi.movie == self
    end
  end

  def viewers
    queue_items.map do |qi|
      qi.viewer
    end
  end

  def ratings
    queue_items.map do |qi|
      qi.rating
    end.delete_if do |value|
      value == nil
    end
  end

  def average_rating
    rating_sum = ratings.reduce do |sum, rating|
      sum + rating
    end

    rating_avg = rating_sum/ratings.count
  end

end
