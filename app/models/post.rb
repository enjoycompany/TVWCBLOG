class Post < ActiveRecord::Base
  attr_accessible :content, :topic
  validates :topic, presence: true
  validates :content, presence: true
end
