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
    QueueItem.all.select {|queue_item| queue_item.movie == self}
  end

  def viewers
    queue_items.map {|queue_item| queue_item.viewer}
  end

  def average_rating
    sum_of_ratings = queue_items.inject(0) do |sum, queue_item| 
        if queue_item.rating # If the QueueItem holds a rating, use it
          sum + queue_item.rating
        else # If the QueueItem doesn't hold a rating, use 0
          sum + 0
        end
      end
    sum_of_ratings / queue_items.count
  end

  def self.highest_rated
    highest_rated_in_queue = QueueItem.all.max_by do |queue_item| 
      queue_item.movie.average_rating
    end
    highest_rated_in_queue.movie
  end

end
