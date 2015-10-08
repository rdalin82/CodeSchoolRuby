class Library
  attr_accessor :games
  METHODS = [:each, :map, :select]
  METHODS.each do |method|
    define_method(method) do |&block|
      games.send(method, &block)
 
    end 
  end 
  #replace all individual methods below with define_method passing block down
  #send block into newly defined method 

  # def each(&block)
  # 	games.each(&block)
  # end 

  # def map(&block)
  # 	games.map(&block)
  # end 

  # def select(&block)
  # 	games.select(&block)
  # end 

end