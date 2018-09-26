class BoxOffice::Movie
  attr_accessor :title, :synopsis, :rating, :genres, :director, :writers, :cast, :critic_score, :audience_score, :runtime, :studio, :release_date
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def add_movie_attributes(attr_hash)
    attr_hash.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def self.all
    @@all
  end
end
