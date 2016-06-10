class Song < ActiveRecord::Base
  belongs_to :user

  has_many :likes
  has_many :liked_by, :through => :likes, :source => :user


  def self.search(query)
    wildcarded_query = "%#{query}%"
    where(
      "artist ILIKE :artist OR title ILIKE :title",
      artist: wildcarded_query,
      title: wildcarded_query
    )
  end
end
