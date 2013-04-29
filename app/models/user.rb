class User < ActiveRecord::Base
	attr_acessible :name, :email, :password
end
