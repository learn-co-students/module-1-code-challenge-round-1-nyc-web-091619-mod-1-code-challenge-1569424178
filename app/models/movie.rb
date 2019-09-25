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

  def viewers
    Viewer.all.each do |viewer_queue|
      viewer_queue.username == viewer_queue
      #returns all users
    end
  end


end
