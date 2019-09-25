class Viewer
  
  attr_reader :movie
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
    QueueItem.all.select {|queue| queue.viewer == self }
  end #return an array of `QueueItem` instances associated with this instance of `Viewer`


  def queue_movies
    queue_items.map {|queue| queue.movie }
  end #return an array of `Movie` instances in the `Viewer`'s queue
  #getting an empty array
  
  
end #end of Viewer class
