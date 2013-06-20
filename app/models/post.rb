class Post < ActiveRecord::Base
  attr_accessible :content, :topic, :name, :user
  validates :topic, presence: true,:length => { :minimum => 5 }
  validates :content, presence: true
  #has_many :commenters
  belongs_to :user
  has_many :comments,:dependent => :destroy
 
end
