class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id, :post
  belongs to :post
  belongs_to :user
end
