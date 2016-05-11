class Question < ActiveRecord::Base
  belongs_to :category
  validates :question, :answer, :presence => true
end
