class Game
  def initialize(&block)
    instance_eval(&block) if block_given?
  end

  #pass in a block to create a new method when initiazlied 
  def owner(name=nil)
    if name
      @owner = name
    else
      @owner
    end
  end
end
