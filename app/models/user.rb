class User < ActiveRecord::Base
  has_secure_password
  has_many :songs
  has_many :likes
  has_many :liked_songs, :through => :likes, :source => :song

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  before_save :set_handle

  private
  def set_handle
    self.handle ||= email
  end
end
