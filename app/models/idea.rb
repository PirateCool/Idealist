class Idea < ApplicationRecord
  belongs_to :user
  has_many :upvotes

  # acts_as_commentable

  validates :name, presence: true, uniqueness: true
  validates :content, presence: true


end
