class User < ActiveRecord::Base
  has_secure_password
  has_many :songs

  before_save :set_handle

  private

  def set_handle
    self.handle ||= email
end
