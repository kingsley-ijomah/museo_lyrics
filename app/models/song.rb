class Song < ActiveRecord::Base
  belongs_to :user

  has_many :likes
  has_many :liking_users, :through => :likes, :source => :user


  def self.search(search)
    where("artist LIKE ?", "%#{search}")
    where("title LIKE ?", "%#{search}")
  end
end
