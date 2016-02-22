class TopicUser < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  # attr_accessible :title, :body
end
