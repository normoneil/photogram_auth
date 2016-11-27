class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :username, :uniqueness => true
#  validates :username, :presence => true

  # Direct associations
  has_many :photos
  has_many :comments
  has_many :likes

  # Indirect associations
  has_many :liked_photos, :through => :likes, :source => :photo

end
