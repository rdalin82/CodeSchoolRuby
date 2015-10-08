library = Library.new(GAMES)
proc = Proc.new { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }
library.each(&proc)

# library.each { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }
