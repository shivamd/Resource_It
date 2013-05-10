module BookmarkletHelper

	def bookmarklet_caller_js
		js = <<-JS
		(function (){
			var script = document.createElement('SCRIPT');
			script.src = 'https://snipp.et.herokuapp.com/assets/bookmarklet_js.js';
			script.setAttribute('data-bookmarklet-token', '#{current_user.remember_token}');
			document.body.appendChild(script);
		})();
		JS
		js.split("\n").map(&:strip).join('')
	end
end
