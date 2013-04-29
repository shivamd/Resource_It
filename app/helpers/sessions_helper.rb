module SessionsHelper

	def sign_in
		cookies.permanent[:token] = user.id
		self.current_user = user
	end
end
