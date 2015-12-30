class Assignment < ActiveRecord::Base
  belongs_to :user
  has_many :submission
  has_many :links, through: :submission
  has_many :comments, as: :commentable
end
