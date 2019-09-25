require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flex = Viewer.new("DS_Flex")
pop = Viewer.new("Padre")
matrix = Movie.new("The Matrix")
fif_el = Movie.new("The Fifth Element")
q_item = QueueItem.new(flex, matrix)
q_item2 = QueueItem.new(flex, fif_el)
q_item3 = QueueItem.new(pop, matrix)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
