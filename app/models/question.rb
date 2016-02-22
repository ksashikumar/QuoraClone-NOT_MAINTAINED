class Question < ActiveRecord::Base
  
  belongs_to :user
  attr_accessible :description, :title
  has_many :topics
  has_many :answers

  has_many :comments, through: :answers

  validates :title, presense: true, length: {minimum: 20, maximum: 100}
end
