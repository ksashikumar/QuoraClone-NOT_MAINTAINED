class Answers < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  attr_accessible :body, :votes
  has_many :comments
end
