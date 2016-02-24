class Topic < ActiveRecord::Base
  attr_accessible :title
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  has_many :questions

  before_save { |topic| topic.title = title.downcase }

end
