class Answer < ActiveRecord::Base
  belongs_to :question, foreign_key: :question_id
  belongs_to :user, :foreign_key => :user_id
  attr_accessible :body, :votes
  has_many :comments

  validates :body, :question_id, presence: true
end
