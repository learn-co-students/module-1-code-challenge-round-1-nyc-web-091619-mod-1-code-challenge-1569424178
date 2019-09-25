class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select{|queue_item| queue_item.movie == self}
  end

  def viewers
    queue_items.map{|queue_item| queue_item.viewer}
  end

  def average_rating
    sum = 0
    ratings = queue_items.map{|queue_item| queue_item.rating}
    if ratings.length != 0 
      sum = ratings.inject{|sum, n| sum + n}
      avg_rating = (sum/ratings.length.to_f).round(2)
    else
      return nil
    end
  end

  def self.highest_rated
    rating_hash = self.all.map do |movie|
      {movie => movie.average_rating}
    end
    sorted_rating_hash = rating_hash.sort_by{|key, value| value}.reverse
    sorted_rating_hash_array = sorted_rating_hash.map{|rating| rating.keys}
    sorted_rating_hash_array[0]
    binding.pry
  end

end
