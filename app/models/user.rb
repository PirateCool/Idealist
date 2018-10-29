class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :upvotes
    has_many :ideas

           def voted_for?(idea)
    			idea.upvotes.where(user: self).any?
  			end
end
