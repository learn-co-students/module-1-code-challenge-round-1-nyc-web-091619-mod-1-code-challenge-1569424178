class Movie
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def queue_items 
    QueueItem.all.select do |queue_item|
      queue_item.movie == self 
    end 
  end 

  def viewers 
    queue_items.map do |queue_item|
      queue_item.viewer
    end 
  end 
  
  # def all_ratings 
  #   queue_items.map do |queue_item|
  #     queue_item.rating 
  #   end 
  # end 

  # def average_rating 
  #  sum =  all_ratings.reduce do |sum, rating|
  #     sum + rating 
  #   end 
  #   sum.to_f / queue_items.length
  # end 

  def average_rating  
    sum = queue_items.reduce(0) do |sum, queue_item|
      sum + queue_item.rating 
    end 
    sum.to_f / queue_items.length 
  end 

  def self.all
    @@all
  end

  def self.highest_rated 
    self.all.max_by do |movie|
      movie.average_rating
    end 
  end 
    

end #end of class



 
