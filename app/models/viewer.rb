
class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select {|item| item.viewer == self}
  end

  def queue_movies
    queue_items.map {|item| item.movie}
  end

  # returns the new QueueItem instance 
  # spec did not specify return value 
  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  # returns the (updated or created) instance of Queue Item
  # spec did not specify a return value
  def rate_movie(movie, rating)

    # look for a queue_item for this moview and viewer
    this_q_item = queue_items.find {|item| item.movie == movie}
    
    # if such a queue_item already exits, update the rating and return that item
    if this_q_item
      this_q_item.rating = rating
      this_q_item

    else # if not, create and return the item, with specified rating
      QueueItem.new(self, movie, rating)
    end
  end

  def self.all
    @@all
  end
  
end #end of Viewer class
