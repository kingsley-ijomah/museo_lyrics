class Song < ActiveRecord::Base
  belongs_to :user

  has_many :likes
  has_many :liked_by, :through => :likes, :source => :user


  def self.search(search)
    where("artist LIKE ?", "%#{search}")
    where("title LIKE ?", "%#{search}")
  end
end
