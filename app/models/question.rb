class Question < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user, :foreign_key => :user_id
  
  has_many :topics
  has_many :answers
  has_many :comments, through: :answers

  validates :title, :user_id, presence: true
end
