require 'bundler/setup'
Bundler.require
require_rel '../app'


m1 = Movie.new("Shrek")
m2 = Movie.new("Crazy Rich Asians")
m3 = Movie.new("The Farewell")
m4 = Movie.new("Home Alone")

v1 = Viewer.new("jon")
v2 = Viewer.new("kim")
v3 = Viewer.new("sofie")
v4 = Viewer.new("leah")


qi1 =  QueueItem.new(m1, v1, 5)
qi2 =  QueueItem.new(m2, v2, 5)
qi3 =  QueueItem.new(m1, v3, 2)
qi4 =  QueueItem.new(m2, v1, 4)
qi5 =  QueueItem.new(m3, v3, 1)
qi6 =  QueueItem.new(m4, v4, 2)
qi7 =  QueueItem.new(m4, v4, 3)

 binding.pry
