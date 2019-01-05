class Film
  @@all = [ ]
  attr_accessor :title, :description, :rt_score

  def self.all
    if @@all.empty?
      create
    else
      @@all
    end
  end

  def initialize(title_hash)
    title_hash.each do |method,arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=",arg)
      end
    end
  end

  def self.create
    api = API.new
    results = api.get_film.map do |title_hash|
      self.new(title_hash).save
    end
  end

  def save
      @@all << self
      self
  end
end

  Film.create
