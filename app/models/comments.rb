class Comments < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  attr_accessible :body
end
