
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
    Film.all.each.with_index(1) do |film, i|
      if i <= 20
        puts "#{i}. #{film.title}"
      end
    end
    puts ""
  end

  def print_film(film)
    puts ""
    puts  "-------------- #{film.title} --------------"
    puts ""
    puts film.description
    puts ""
    puts film.rt_score
    puts ""
  end

  def menu
    input = nil
    while input != "exit"
      puts "Select which movie you would like to learn about by typing number."
      puts "Type menu to see the list of movies again, or type exit to end the program."
      input = gets.strip.downcase
      if input.to_i > 0
        if film = StudioGhibli::Film.find(input.to_i)
           print_film(film)
        end
      elsif input == "menu"
        list_films
      else
        puts "Not sure what you want? Type menu or exit." unless input == "exit"
      end
    end
  end

  def good_bye
   puts "Goodbye!"
  end
end
