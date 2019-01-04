
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
    api = API.new
    results = api.get_film.map do |title_hash|
      Film.new(title_hash)
    end
    i = 1
    results.each do |film|
      puts "#{i}. #{film.title}"
      i = i+1
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
        input = gets.chomp
        if input > 0
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
