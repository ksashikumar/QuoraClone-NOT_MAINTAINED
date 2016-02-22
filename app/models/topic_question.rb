class TopicQuestion < ActiveRecord::Base
  belongs_to :topic
  belongs_to :question
  # attr_accessible :title, :body
end
