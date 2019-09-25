class QueueItem
  attr_accessor :rating, :viewer, :movie

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating

    @@all << self
  end

  # Class methods
  
  def self.all
    @@all
  end

  # Instance methods
  
  def rate(num)
    self.rating = num
  end
end # End of class
