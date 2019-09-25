class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all                # returns an array of all Movie
    @@all
  end

  def queue_items             # return an array of QueueItem instances containing this movie
    QueueItem.all.select { 
      |queue_item|
      queue_item.movie == self
    }
  end

  def viewers                 # return an array of the Viewers with this Movie instance in their queue
    queue_items.select {
      |queue_item|
      queue_item.viweer
    }
  end

  def average_rating          # returns the average of all ratings for this instance of Movie
    gathered_ratings = queue_items.map {
      |queue_item|
      queue_item.rating
    }
    summed_ratings = gathered_ratings.inject(0.0) { 
      |sum, el| 
      sum + el } 
    (summed_ratings / gathered_ratings.size).round(2)
  end

  def self.highest_rated           # returns the instance of Movie with the highest average rating
    (QueueItem.all.max_by { |n| n.rating }).movie
  end

end   #   end of Movie class

