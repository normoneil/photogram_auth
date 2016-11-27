class Photo < ActiveRecord::Base
  validates :user_id, :presence => true

  # Direct associations
  belongs_to :user
  has_many :comments
  has_many :likes

  # Indirect associations
  has_many :fans, :through => :likes, :source => :user

end
