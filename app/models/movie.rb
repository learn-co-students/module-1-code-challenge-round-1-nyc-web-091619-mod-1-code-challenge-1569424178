class Movie
  
  attr_accessor :viewer, :username
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
    QueueItem.all.select {|queue| queue.movie == self }
  end

  def viewers
    queue_items.select {|queue| queue.viewer }
  end #returns an array of all of the `Viewer`s with this `Movie` instance in their queue

end #end of Movie class
