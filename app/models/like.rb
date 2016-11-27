class Like < ActiveRecord::Base
  validates :user_id, :uniqueness => { :scope => [:photo_id] }
  validates :user_id, :presence => true
  validates :photo_id, :presence => true

  # Direct associations
  belongs_to :user
  belongs_to :photo
end
