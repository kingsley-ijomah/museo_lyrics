class Song < ActiveRecord::Base
  belongs_to :user

  has_many :likes
  has_many :liked_by, :through => :likes, :source => :user


  def self.search(search)
    wildcarded_query = "%#{search}%"
    where(
      "artist ILIKE :artist OR title ILIKE :title"
      artist: wildcarded_query
      title: wildcarded_query
    )
  end
end
