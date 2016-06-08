class User < ActiveRecord::Base
  has_secure_password
  has_many :songs
  has_many :likes
  has_many :liked_songs, :through => :likes, :source => :song

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def likes?(song)
    !(self.likes.find_by song: song).nil?
  end
end
