class Comment < ApplicationRecord
  validates :body, presence:true, length: {maximum: 50}
  validates_presence_of :user_id, :post_id

  belongs_to :user
  belongs_to :post
end
