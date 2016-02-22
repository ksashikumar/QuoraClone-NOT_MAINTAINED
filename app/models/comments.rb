class Comments < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  attr_accessible :body

  validates :body, presence: true
  has_one :question, through: :answer
  
end
