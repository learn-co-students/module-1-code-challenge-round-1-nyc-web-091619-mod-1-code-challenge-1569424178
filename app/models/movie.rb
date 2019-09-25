class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def my_queue_items
    Movie.all select do |viewer|
      movie.viewer == self
  end

  def queue_items
    my_queue_items.map do |viewer|
      queue_items.viewer
    end
  end

def movie_rating
#queue items
end 


  def average_rating
    Movie.all select do |rating|
      average_rating.rating
      #|Queue_item.rating|.average
    end


  end

  def highest_rated
    #Would use find the highest rating from average rating


  end

  


end
