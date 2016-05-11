class Category < ActiveRecord::Base
  has_many :questions
  validates :name, :description, :presence => true
  validates :description, :length => {
    :maximum => 200,
    :too_long => "%{count} characters is the maximum allowed"
  }
end
