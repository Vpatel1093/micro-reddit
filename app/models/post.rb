class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  validates :content, presence: true, length: {maximum: 250}
  validates_presence_of :user_id
  belongs_to :user
  has_many :comments
end
