
class StudioGhibli::Film
  @@all = [ ]
  attr_accessor :title, :description, :rt_score,

  def initialize(title, description, rt_score)
    @title = title
    @description = description
    @rt_score = rt_score
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_index(index)
    @@all[index]
  end
end
