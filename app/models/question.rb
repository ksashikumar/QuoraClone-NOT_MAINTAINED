class Question < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user, :foreign_key => :user_id

  has_many :answers
  has_many :comments, through: :answers

  has_many :topic_question
  has_many :topics, :through => :topic_question, :source => :topic

  validates :title, :user_id, presence: true
end
