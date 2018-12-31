class Film
  attr_accessor :title, :description, :rt_score

  @@all = [ ]

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end
end
