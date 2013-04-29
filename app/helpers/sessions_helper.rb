module SessionsHelper

	def sign_in
		cookies.permanent[:token] = user.id
		self.current_user = user
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by_id(cookies[:token])
	end

	def signed_in?
		current_user.present?
	end
end
