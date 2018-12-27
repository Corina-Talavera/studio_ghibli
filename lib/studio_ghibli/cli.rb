class CLI
  
  attr_reader :title, :description, :rt_score
  
  def call
    input = ''
    while input != 'exit'
    puts "***Welcome to the Studio Ghibli Data Gem Project!***"
    puts "To list all films, enter 'get films'."
    puts "To quit, type 'exit'."
    input = gets.chomp
      case input
      when 'get films'
        get_films
      when "#{title}"
        film_info
      end
    end
  end
  
  def get_films
    Film.all
        puts "#{title}"
        end
    end
    puts "See a film you like? Type out the name. Example: Spirited Away"
  
      
  
  def film_info
    Film.all.each do |film|
      puts "#{film.title.upcase}"
      puts  "#{film.description}"
      puts "#{film.rt_score}"
    end
end
