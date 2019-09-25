class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    queue_items.map {|item| item.viewer}.uniq
  end

  # Returns a float rounded to 2 deicmal places
  def average_rating
    (queue_items.inject(0.0) {|sum, item| item.rating + sum} / queue_items.count).round(2)
  end

  # Note - if two movies tie for highest rating, it will return one of them 
  # (I think it just chooses the first of the max value in the QueueItem.all array)
  def self.highest_rated
    QueueItem.all.max_by {|item| item.rating}.movie
  end

  def self.all
    @@all
  end

end #end of Movie class
