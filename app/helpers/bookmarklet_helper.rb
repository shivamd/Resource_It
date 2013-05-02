module BookmarkletHelper

	def bookmarklet_caller_js
	  base_url = Rails.env.dev? ? "http://#{request.host_and_port}/" ? "https://#{request.host_and_port}/"
		js = <<-JS
		(function (){
			var script = document.createElement('SCRIPT');
			script.src = '#{base_url}/assets/bookmarklet_js.js';
			script.setAttribute('data-bookmarklet-token', '#{current_user.remember_token}');
			document.body.appendChild(script);
		})();
		JS
		js.split("\n").map(&:strip).join('')
	end
end
