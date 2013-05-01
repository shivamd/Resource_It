class Snippet < ActiveRecord::Base
	attr_accessible :content, :user_id

	validates :content, :user_id, presence: true
  belongs_to :user
  has_and_belongs_to_many :tags
end
