class StudioGhibli::CLI
  def call
    welcome
    list_film
    menu
    goodbye
  end

  def welcome
    puts ""
    puts "** Welcome to the StudioGhibli CLI **"
    puts ""
  end

  def list_film
    StudioGhibli::StudioGhibliAPI
    StudioGhibli::Film.all.each do |film, i|
      if i
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
      puts "Select which film you would to learn more about."
      puts "Type menu to see the list of films again, or type exit to end the program."
      input = gets.strip.downcase
      if input.to_i > 0
        if film = StudioGhibli::Film.find(input.to_i)
           print_film(film)
        end
      elsif input == "menu"
        list_film
      else
        puts "Not sure what you want? Type menu or exit." unless input == "exit"
      end
    end
  end

  def goodbye
    puts "See You Soon!"
  end
end
