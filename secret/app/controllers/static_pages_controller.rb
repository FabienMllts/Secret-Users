class StaticPagesController < ApplicationController
	def home
	end

	def secret_page
		unless logged_in?
			flash[:danger] = " Tu dois te connecter d'abord ;)"
			redirect_to login_path
			
		end
	end
end
