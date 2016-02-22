class Question < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title
  has_many :topics
  has_many :answers
end
