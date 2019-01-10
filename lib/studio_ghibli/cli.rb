
class CLI
  def call
    welcome
    list_films
    menu
    good_bye
  end

  def welcome
    puts ""
    puts "****** Welcome to the Studio Ghibli Project *******"
    puts ""
  end

  def list_films
    puts "**Film List**"
    @films = Film.all
    @films.each.with_index do |film, i|
      puts "#{i+1}. #{film.title}"
    end
  end
  def print_film(film)
    puts ""
    puts  "-------------- #{film.title} --------------"
    puts ""
    puts "Description: #{film.description}"
    puts ""
    puts "Rotten Tomato Score: #{film.rt_score}"
    puts ""
  end
  def menu
    input = nil
    while input != "exit"
      puts "Select which movie you would like to learn about by typing number."
      puts "Type menu to see the list of movies again, or type exit to end the program."
      input = gets.strip.downcase
      if input.to_i > 0
        if film = @films[input.to_i-1]
           print_film(film)
        end
      elsif input == "menu"
        list_film
      else
        puts "Huh? That didn't make sense! Type menu or exit." unless input == "exit"
      end
    end
  end
  def good_bye
   puts "Goodbye!"
  end
end
