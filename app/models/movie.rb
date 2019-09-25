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
    QueueItems.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    queue_items.map do |movie|
      movie.viewer
    end
  end

  def average_rating
    rate = queue_items.map{|movie| movie.rating} # returns a array with all the ratings of this movie
    total_rating = rate.inject(0){|sum,second| sum + second} # calculate the sum of all the ratings
    avg = total_rating / rate.length # calculate average rating by dividing the total rating by the numbers of rating that viewers gave
    puts avg # prints the average number
  end

  def self.highest_rated
    

  end


  
end # end of movie
