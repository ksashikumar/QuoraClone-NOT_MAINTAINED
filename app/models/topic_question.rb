class TopicQuestion < ActiveRecord::Base
  belongs_to :topic, inverse_of: :topic_question
  belongs_to :question, inverse_of: :topic_question
  validates :topic, :question, presence: true
end
