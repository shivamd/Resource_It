class User < ActiveRecord::Base
	attr_accessible :name, :email, :password

	validates :name, presence: true, length: { maximum: 50 }
end
