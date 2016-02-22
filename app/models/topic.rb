class Topic < ActiveRecord::Base
  attr_accessible :title
  validates :title, presence: true
  has_many :questions
end
