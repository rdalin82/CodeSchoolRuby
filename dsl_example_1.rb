
  #game.rb
class Game
	attr_reader :name
	
	def initialize(name)
		@name = name
		@year = nil
		@system = nil
	end
	
	def year(value)
		@year = value
	end
	
	def system(value)
		@system = value
	end
	
	def print_details
		puts "#{@name} - #{@year} (#{@system})"
	end
	
	def play
	end
	
	def capture_screenshot
	end
end

	#libary.rb
class Library
	def initialize
		@games = []
	end
	
	def add_game(game)
		@games << game
	end
	
	def find_by_name(name)
		@games.detect { |game| game.name == name }
	end
end

#game dsl.rb
LIBRARY = Library.new
	
def add_game(name, &block)
	game = Game.new(name)
	game.instance_eval(&block)
	LIBRARY.add_game(game)
end
	
def with_game(name, &block)
	game = LIBRARY.find_by_name(name)
	game.instance_eval(&block)
end


#example.rb 
add_game "Civilization" do
  system "PC"
  year 1991
end

add_game "Contra" do 
  system "NES" 
  year "1987" 
end 

with_game "Contra" do 
  print_details
  play
  capture_screenshot
end 


  
